defmodule OriginsSdk.ExpertPages do
  @moduledoc """
  RPC actions on the `Origins.ExpertPages` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.ExpertPages.AttachLibraryToExpertPage
  alias OriginsSdk.ExpertPages.CreateExpertPage
  alias OriginsSdk.ExpertPages.DetachLibraryFromExpertPage
  alias OriginsSdk.ExpertPages.ExpertPage
  alias OriginsSdk.ExpertPages.ExpertPageLibrary
  alias OriginsSdk.ExpertPages.GetExpertPage
  alias OriginsSdk.ExpertPages.ListExpertPageLibraries
  alias OriginsSdk.ExpertPages.ListExpertPageVersions
  alias OriginsSdk.ExpertPages.ListExpertPagesForOrigin
  alias OriginsSdk.ExpertPages.ListLibrariesForExpertPage
  alias OriginsSdk.ExpertPages.ParseAppBlocks
  alias OriginsSdk.ExpertPages.ParseAssessmentBlocks
  alias OriginsSdk.ExpertPages.ParseExpertBlocks
  alias OriginsSdk.ExpertPages.RestoreExpertPageVersion
  alias OriginsSdk.ExpertPages.SendExpertChatMessage
  alias OriginsSdk.ExpertPages.UpdateExpertPage
  alias OriginsSdk.ExpertPages.Version

  @doc """
  Run the `attach_library_to_expert_page` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def attach_library_to_expert_page(%AttachLibraryToExpertPage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPageLibrary)

    payload =
      %{
        "action" => "attach_library_to_expert_page",
        "input" => AttachLibraryToExpertPage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPageLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_expert_page` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_expert_page(%CreateExpertPage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "create_expert_page",
        "input" => CreateExpertPage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Run the `detach_library_from_expert_page` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def detach_library_from_expert_page(%DetachLibraryFromExpertPage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPageLibrary)

    payload =
      %{
        "action" => "detach_library_from_expert_page",
        "input" => DetachLibraryFromExpertPage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPageLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_expert_page` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_expert_page(%GetExpertPage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "get_expert_page",
        "input" => GetExpertPage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_expert_page_libraries` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_expert_page_libraries(%ListExpertPageLibraries.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPageLibrary)

    payload =
      %{
        "action" => "list_expert_page_libraries",
        "input" => ListExpertPageLibraries.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPageLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_expert_page_versions` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_expert_page_versions(%ListExpertPageVersions.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Version)

    payload =
      %{
        "action" => "list_expert_page_versions",
        "input" => ListExpertPageVersions.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Version.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_expert_pages_for_origin` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_expert_pages_for_origin(%ListExpertPagesForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "list_expert_pages_for_origin",
        "input" => ListExpertPagesForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  All libraries attached to a given expert page.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_libraries_for_expert_page(%ListLibrariesForExpertPage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPageLibrary)

    payload =
      %{
        "action" => "list_libraries_for_expert_page",
        "input" => ListLibrariesForExpertPage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPageLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `parse_app_blocks` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def parse_app_blocks(%ParseAppBlocks.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "parse_app_blocks",
        "input" => ParseAppBlocks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Run the `parse_assessment_blocks` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def parse_assessment_blocks(%ParseAssessmentBlocks.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "parse_assessment_blocks",
        "input" => ParseAssessmentBlocks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Run the `parse_expert_blocks` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def parse_expert_blocks(%ParseExpertBlocks.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "parse_expert_blocks",
        "input" => ParseExpertBlocks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Restore content from a paper trail version snapshot

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def restore_expert_page_version(%RestoreExpertPageVersion.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "restore_expert_page_version",
        "input" => RestoreExpertPageVersion.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Send a chat message to the expert page's persistent Letta agent

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def send_expert_chat_message(%SendExpertChatMessage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "send_expert_chat_message",
        "input" => SendExpertChatMessage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_expert_page` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_expert_page(%UpdateExpertPage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ExpertPage)

    payload =
      %{
        "action" => "update_expert_page",
        "input" => UpdateExpertPage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ExpertPage.from_json/1, nil)
    end
  end


  defp normalize_fields(:all, schema), do: schema.primitive_fields()
  defp normalize_fields(list, _) when is_list(list), do: list

  defp encode_fields(fields) do
    Enum.map(fields, fn
      atom when is_atom(atom) -> Atom.to_string(atom)
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
