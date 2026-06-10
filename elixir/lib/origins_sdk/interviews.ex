defmodule OriginsSdk.Interviews do
  @moduledoc """
  RPC actions on the `Origins.Interviews` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Interviews.CreateInterviewSession
  alias OriginsSdk.Interviews.CreateInterviewTurn
  alias OriginsSdk.Interviews.FinishInterviewSession
  alias OriginsSdk.Interviews.GenerateInterviewQuestion
  alias OriginsSdk.Interviews.GetInterviewSession
  alias OriginsSdk.Interviews.InterviewGeneratedContent
  alias OriginsSdk.Interviews.InterviewSession
  alias OriginsSdk.Interviews.InterviewTurn
  alias OriginsSdk.Interviews.ListInterviewGeneratedContents
  alias OriginsSdk.Interviews.ListInterviewSessions
  alias OriginsSdk.Interviews.PresignRecordingDownloadUrl
  alias OriginsSdk.Interviews.UpdateInterviewGeneratedContent
  alias OriginsSdk.Interviews.UpdateInterviewSession

  @doc """
  Run the `create_interview_session` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_interview_session(%CreateInterviewSession.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewSession)

    payload =
      %{
        "action" => "create_interview_session",
        "input" => CreateInterviewSession.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewSession.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_interview_turn` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_interview_turn(%CreateInterviewTurn.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewTurn)

    payload =
      %{
        "action" => "create_interview_turn",
        "input" => CreateInterviewTurn.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewTurn.from_json/1, nil)
    end
  end


  @doc """
  Finish an interview and trigger the finalization pipeline

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def finish_interview_session(%FinishInterviewSession.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewSession)

    payload =
      %{
        "action" => "finish_interview_session",
        "input" => FinishInterviewSession.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewSession.from_json/1, nil)
    end
  end


  @doc """
  Generate the next interview question using a Letta agent

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def generate_interview_question(%GenerateInterviewQuestion.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "generate_interview_question",
        "input" => GenerateInterviewQuestion.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `get_interview_session` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_interview_session(%GetInterviewSession.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewSession)

    payload =
      %{
        "action" => "get_interview_session",
        "input" => GetInterviewSession.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewSession.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_interview_generated_contents` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_interview_generated_contents(%ListInterviewGeneratedContents.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewGeneratedContent)

    payload =
      %{
        "action" => "list_interview_generated_contents",
        "input" => ListInterviewGeneratedContents.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewGeneratedContent.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_interview_sessions` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_interview_sessions(%ListInterviewSessions.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewSession)

    payload =
      %{
        "action" => "list_interview_sessions",
        "input" => ListInterviewSessions.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewSession.from_list/1, nil)
    end
  end


  @doc """
  Generate a presigned URL for downloading the recording

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def presign_recording_download_url(%PresignRecordingDownloadUrl.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "presign_recording_download_url",
        "input" => PresignRecordingDownloadUrl.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `update_interview_generated_content` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_interview_generated_content(%UpdateInterviewGeneratedContent.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewGeneratedContent)

    payload =
      %{
        "action" => "update_interview_generated_content",
        "input" => UpdateInterviewGeneratedContent.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewGeneratedContent.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_interview_session` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_interview_session(%UpdateInterviewSession.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, InterviewSession)

    payload =
      %{
        "action" => "update_interview_session",
        "input" => UpdateInterviewSession.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &InterviewSession.from_json/1, nil)
    end
  end


  defp normalize_fields(:all, schema), do: schema.primitive_fields()
  defp normalize_fields(list, _) when is_list(list), do: list

  defp encode_fields(fields) do
    Enum.map(fields, fn
      atom when is_atom(atom) -> Atom.to_string(atom)
      str when is_binary(str) -> str
      {parent, nested} -> %{Atom.to_string(parent) => encode_fields(nested)}
    end)
  end

  defp maybe_put(map, _key, nil), do: map
  defp maybe_put(map, key, value), do: Map.put(map, key, value)

  defp decode_action_response(%{"success" => true, "data" => data} = body, data_decoder, meta_decoder) do
    metadata = if meta_decoder, do: meta_decoder.(body["metadata"]), else: nil
    result = %{data: data_decoder.(data)}
    result = if metadata, do: Map.put(result, :metadata, metadata), else: result
    {:ok, result}
  end

  defp decode_action_response(%{"success" => false, "errors" => errors}, _, _) do
    {:error, Error.from_list(errors)}
  end

end
