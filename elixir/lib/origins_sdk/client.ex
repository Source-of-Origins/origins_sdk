defmodule OriginsSdk.Client do
  @moduledoc """
  HTTP transport for Origins `/rpc/run` and `/rpc/validate`. Built on `Req`.

  Pass an explicit `%Client{}` per call, or rely on application config:

      config :origins_sdk,
        base_url: "https://origins.example.com",
        api_key: System.fetch_env!("ORIGINS_API_KEY")
  """

  defstruct [:base_url, :api_key, :req]

  @type t :: %__MODULE__{
          base_url: String.t(),
          api_key: String.t() | nil,
          req: Req.Request.t() | nil
        }

  @spec new(keyword()) :: t()
  def new(opts \\ []) do
    base_url = Keyword.get_lazy(opts, :base_url, fn -> config!(:base_url) end)
    api_key = Keyword.get_lazy(opts, :api_key, fn -> config(:api_key) end)

    %__MODULE__{
      base_url: base_url,
      api_key: api_key,
      req:
        Req.new(
          base_url: base_url,
          headers: auth_headers(api_key),
          retry: :transient
        )
    }
  end

  @spec run(map(), keyword()) :: {:ok, map()} | {:error, term()}
  def run(payload, opts \\ []), do: post("/rpc/run", payload, opts)

  @spec validate(map(), keyword()) :: {:ok, map()} | {:error, term()}
  def validate(payload, opts \\ []), do: post("/rpc/validate", payload, opts)

  defp post(path, payload, opts) do
    client = opts[:client] || new(opts)

    case Req.post(client.req, url: path, json: payload) do
      {:ok, %Req.Response{status: 200, body: body}} -> {:ok, body}
      {:ok, %Req.Response{status: status, body: body}} -> {:error, {:http_error, status, body}}
      {:error, exception} -> {:error, exception}
    end
  end

  defp auth_headers(nil), do: []
  defp auth_headers(api_key), do: [{"authorization", "Bearer #{api_key}"}]

  defp config(key), do: Application.get_env(:origins_sdk, key)

  defp config!(key) do
    config(key) ||
      raise ArgumentError,
            "missing required config: config :origins_sdk, #{inspect(key)}, ..."
  end
end
