defmodule OriginsSdk.Apps do
  @moduledoc """
  RPC actions on the `Origins.Apps` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Apps.App
  alias OriginsSdk.Apps.AppLibrary
  alias OriginsSdk.Apps.AttachLibraryToApp
  alias OriginsSdk.Apps.CreateApp
  alias OriginsSdk.Apps.CreateAppFromTemplate
  alias OriginsSdk.Apps.DestroyApp
  alias OriginsSdk.Apps.DetachLibraryFromApp
  alias OriginsSdk.Apps.DuplicateApp
  alias OriginsSdk.Apps.GetApp
  alias OriginsSdk.Apps.GetAppForOriginTypeAndSlug
  alias OriginsSdk.Apps.ListAppLibraries
  alias OriginsSdk.Apps.ListAppTemplates
  alias OriginsSdk.Apps.ListAppTemplatesForType
  alias OriginsSdk.Apps.ListAppVersions
  alias OriginsSdk.Apps.ListAppsForOrigin
  alias OriginsSdk.Apps.ListAppsForOriginAndType
  alias OriginsSdk.Apps.ListLibrariesForApp
  alias OriginsSdk.Apps.ParseAssessmentBlocks
  alias OriginsSdk.Apps.ParseCourseBlocks
  alias OriginsSdk.Apps.ParseLandingBlocks
  alias OriginsSdk.Apps.RestoreAppVersion
  alias OriginsSdk.Apps.SendAppChatMessage
  alias OriginsSdk.Apps.Template
  alias OriginsSdk.Apps.UpdateApp
  alias OriginsSdk.Apps.Version

  @doc """
  Run the `attach_library_to_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def attach_library_to_app(%AttachLibraryToApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "attach_library_to_app",
        "input" => AttachLibraryToApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_app(%CreateApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "create_app",
        "input" => CreateApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Create a new instance seeded from an `Apps.Template`. Title defaults to the template name (numeric suffix on collision); slug is derived from title.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_app_from_template(%CreateAppFromTemplate.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "create_app_from_template",
        "input" => CreateAppFromTemplate.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `destroy_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def destroy_app(%DestroyApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "destroy_app",
        "input" => DestroyApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `detach_library_from_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def detach_library_from_app(%DetachLibraryFromApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "detach_library_from_app",
        "input" => DetachLibraryFromApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_json/1, nil)
    end
  end


  @doc """
  Clone an existing instance. Title becomes `Copy of <original>` (numeric suffix on collision); full content carried over; not published.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def duplicate_app(%DuplicateApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "duplicate_app",
        "input" => DuplicateApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_app(%GetApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "get_app",
        "input" => GetApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_app_for_origin_type_and_slug` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_app_for_origin_type_and_slug(%GetAppForOriginTypeAndSlug.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "get_app_for_origin_type_and_slug",
        "input" => GetAppForOriginTypeAndSlug.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_app_libraries` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_libraries(%ListAppLibraries.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "list_app_libraries",
        "input" => ListAppLibraries.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_app_templates` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_templates(%ListAppTemplates.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Template)

    payload =
      %{
        "action" => "list_app_templates",
        "input" => ListAppTemplates.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Template.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_app_templates_for_type` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_templates_for_type(%ListAppTemplatesForType.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Template)

    payload =
      %{
        "action" => "list_app_templates_for_type",
        "input" => ListAppTemplatesForType.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Template.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_app_versions` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_versions(%ListAppVersions.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Version)

    payload =
      %{
        "action" => "list_app_versions",
        "input" => ListAppVersions.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Version.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_apps_for_origin` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_apps_for_origin(%ListAppsForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "list_apps_for_origin",
        "input" => ListAppsForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_apps_for_origin_and_type` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_apps_for_origin_and_type(%ListAppsForOriginAndType.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "list_apps_for_origin_and_type",
        "input" => ListAppsForOriginAndType.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
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
  def list_libraries_for_app(%ListLibrariesForApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "list_libraries_for_app",
        "input" => ListLibrariesForApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_json/1, nil)
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
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "parse_assessment_blocks",
        "input" => ParseAssessmentBlocks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `parse_course_blocks` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def parse_course_blocks(%ParseCourseBlocks.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "parse_course_blocks",
        "input" => ParseCourseBlocks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `parse_landing_blocks` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def parse_landing_blocks(%ParseLandingBlocks.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "parse_landing_blocks",
        "input" => ParseLandingBlocks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
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
  def restore_app_version(%RestoreAppVersion.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "restore_app_version",
        "input" => RestoreAppVersion.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
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
  def send_app_chat_message(%SendAppChatMessage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "send_app_chat_message",
        "input" => SendAppChatMessage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_app(%UpdateApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "update_app",
        "input" => UpdateApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
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
