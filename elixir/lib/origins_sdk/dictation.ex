defmodule OriginsSdk.Dictation do
  @moduledoc """
  Live dictation: stream microphone audio to Origins, read transcript text back.

  Audio is mono 16-bit little-endian PCM at the sample rate you open with. Push
  roughly 100 ms per frame — a smaller frame wastes round trips, a larger one
  delays the words on screen.

      {:ok, session} = OriginsSdk.Dictation.open(16_000, api_key: user_token)

      {:ok, session} = OriginsSdk.Dictation.send_audio(session, pcm)
      {:ok, session, " the quick brown"} = OriginsSdk.Dictation.recv(session)

      {:ok, session} = OriginsSdk.Dictation.finalize(session)
      {:ok, session, " fox."} = OriginsSdk.Dictation.recv(session)
      {:flush_done, session} = OriginsSdk.Dictation.recv(session)

      {:ok, session} = OriginsSdk.Dictation.close(session)
      :eos = OriginsSdk.Dictation.recv(session)

  Text arrives in fragments that can split a word, so append each one to what
  you already have and render the result — never the fragment alone. Do not trim
  a fragment or add a space between two: the leading spaces are the word
  boundaries.

  Not safe to share across processes. The socket belongs to whichever process
  opened it, because that process receives the TCP messages.
  """

  defstruct [:conn, :ref, :websocket, pending: []]

  @doc """
  Open a session. `sample_rate` is in Hz; Origins accepts 8000, 16000, 24000,
  44100 and 48000.

  Options:

    * `:api_key` — the bearer to authenticate with. Pass a signed-in user's
      token and the session bills to that person; leave it out and the
      configured service-account key is used, which names only a tenant.
    * `:user_id` — who is speaking, for a service-account session. The user
      has to belong to the key's own tenant. Ignored when the bearer is a user
      token, which already says who is speaking.
    * `:base_url` — overrides the configured Origins URL.
  """
  def open(sample_rate, opts \\ []) do
    base_url = Keyword.get_lazy(opts, :base_url, fn -> config!(:base_url) end)
    api_key = Keyword.get_lazy(opts, :api_key, fn -> config!(:api_key) end)
    uri = URI.parse(base_url)
    scheme = if uri.scheme == "https", do: :https, else: :http
    port = uri.port || if(scheme == :https, do: 443, else: 80)
    path = "/api/dictation?" <> query(sample_rate, opts[:user_id])

    with {:ok, conn} <- Mint.HTTP.connect(scheme, uri.host, port, protocols: [:http1]),
         {:ok, conn, ref} <-
           Mint.WebSocket.upgrade(ws_scheme(scheme), conn, path, [
             {"authorization", "Bearer #{api_key}"}
           ]),
         {:ok, conn, status, headers} <- await_upgrade(conn, ref),
         {:ok, conn, websocket} <- Mint.WebSocket.new(conn, ref, status, headers) do
      {:ok, %__MODULE__{conn: conn, ref: ref, websocket: websocket}}
    else
      {:error, _conn, reason} -> {:error, reason}
      {:error, reason} -> {:error, reason}
    end
  end

  @doc "Push one frame of PCM. Returns the session to carry into the next call."
  def send_audio(session, pcm) when is_binary(pcm), do: send_frame(session, {:binary, pcm})

  @doc """
  Ask Origins to transcribe everything buffered — the microphone stopped.

  The transcript for that audio arrives through `recv/2` before `:flush_done`.
  """
  def finalize(session), do: send_frame(session, {:text, "finalize"})

  @doc "End the session. `recv/2` returns `:eos` once the server acknowledges."
  def close(session), do: send_frame(session, {:text, "close"})

  @doc """
  Wait for the next event.

  Returns `{:ok, session, text}` for a transcript fragment, `{:flush_done,
  session}` when a `finalize/1` is answered, `:eos` when the session is over,
  `{:error, reason}` on failure, and `:timeout` if nothing arrived in time.
  """
  def recv(session, timeout \\ 30_000)

  # One TCP message can carry several frames; the leftovers wait here rather
  # than being dropped on the floor.
  def recv(%{pending: [frame | rest]} = session, timeout) do
    dispatch(%{session | pending: rest}, frame, timeout)
  end

  def recv(session, timeout) do
    receive do
      message ->
        case Mint.WebSocket.stream(session.conn, message) do
          {:ok, conn, responses} -> decode(%{session | conn: conn}, responses, timeout)
          {:error, _conn, reason, _responses} -> {:error, reason}
          :unknown -> recv(session, timeout)
        end
    after
      timeout -> :timeout
    end
  end

  defp decode(session, responses, timeout) do
    data = for {:data, _ref, chunk} <- responses, into: <<>>, do: chunk

    case Mint.WebSocket.decode(session.websocket, data) do
      {:ok, websocket, frames} ->
        recv(%{session | websocket: websocket, pending: session.pending ++ frames}, timeout)

      {:error, _websocket, reason} ->
        {:error, reason}
    end
  end

  defp dispatch(session, {:text, json}, timeout) do
    case Jason.decode(json) do
      {:ok, %{"type" => "transcript", "text" => text}} -> {:ok, session, text}
      {:ok, %{"type" => "flush_done"}} -> {:flush_done, session}
      {:ok, %{"type" => "done"}} -> :eos
      {:ok, %{"type" => "error", "message" => message}} -> {:error, message}
      _ -> recv(session, timeout)
    end
  end

  defp dispatch(_session, {:close, _code, _reason}, _timeout), do: :eos
  defp dispatch(session, _frame, timeout), do: recv(session, timeout)

  defp send_frame(session, frame) do
    with {:ok, websocket, data} <- Mint.WebSocket.encode(session.websocket, frame),
         {:ok, conn} <- Mint.WebSocket.stream_request_body(session.conn, session.ref, data) do
      {:ok, %{session | conn: conn, websocket: websocket}}
    else
      {:error, _conn_or_socket, reason} -> {:error, reason}
    end
  end

  defp await_upgrade(conn, ref) do
    receive do
      message ->
        case Mint.WebSocket.stream(conn, message) do
          {:ok, conn, responses} -> upgrade_result(conn, ref, responses)
          {:error, conn, reason, _responses} -> {:error, conn, reason}
          :unknown -> await_upgrade(conn, ref)
        end
    after
      15_000 -> {:error, conn, :upgrade_timeout}
    end
  end

  defp upgrade_result(conn, ref, responses) do
    status = for({:status, ^ref, status} <- responses, do: status) |> List.first()
    headers = for({:headers, ^ref, headers} <- responses, do: headers) |> List.first()

    if status && headers do
      {:ok, conn, status, headers}
    else
      await_upgrade(conn, ref)
    end
  end

  defp query(sample_rate, nil), do: URI.encode_query(%{"sample_rate" => sample_rate})

  defp query(sample_rate, user_id),
    do: URI.encode_query(%{"sample_rate" => sample_rate, "user_id" => user_id})

  defp ws_scheme(:https), do: :wss
  defp ws_scheme(:http), do: :ws

  defp config!(key) do
    Application.get_env(:origins_sdk, key) ||
      raise ArgumentError, "missing required config: config :origins_sdk, #{inspect(key)}, ..."
  end
end
