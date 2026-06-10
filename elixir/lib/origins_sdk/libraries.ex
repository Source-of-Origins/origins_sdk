defmodule OriginsSdk.Libraries do
  @moduledoc """
  RPC actions on the `Origins.Libraries` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Libraries.CreateLibrary
  alias OriginsSdk.Libraries.CreateLibraryAccessGrant
  alias OriginsSdk.Libraries.CreateLibraryFile
  alias OriginsSdk.Libraries.CreateLibraryFileInline
  alias OriginsSdk.Libraries.DeleteLibrary
  alias OriginsSdk.Libraries.DeleteLibraryAccessGrant
  alias OriginsSdk.Libraries.DeleteLibraryFile
  alias OriginsSdk.Libraries.DriveConnection
  alias OriginsSdk.Libraries.GetDriveConnectionForEntity
  alias OriginsSdk.Libraries.GetGithubConnectionForEntity
  alias OriginsSdk.Libraries.GetLibrary
  alias OriginsSdk.Libraries.GetLibraryFile
  alias OriginsSdk.Libraries.GithubConnection
  alias OriginsSdk.Libraries.InitiateDriveOauth
  alias OriginsSdk.Libraries.InitiateGithubOauth
  alias OriginsSdk.Libraries.Library
  alias OriginsSdk.Libraries.LibraryAccessGrant
  alias OriginsSdk.Libraries.LibraryFile
  alias OriginsSdk.Libraries.LibraryShellExec
  alias OriginsSdk.Libraries.LibraryShellListTree
  alias OriginsSdk.Libraries.LibraryShellRead
  alias OriginsSdk.Libraries.ListGithubBranches
  alias OriginsSdk.Libraries.ListGithubRepositories
  alias OriginsSdk.Libraries.ListLibraries
  alias OriginsSdk.Libraries.ListLibrariesForOrigin
  alias OriginsSdk.Libraries.ListLibraryAccessGrants
  alias OriginsSdk.Libraries.ListLibraryFiles
  alias OriginsSdk.Libraries.ListLibraryFilesForLibrary
  alias OriginsSdk.Libraries.PreviewLibrarySyncFilter
  alias OriginsSdk.Libraries.SyncLibraryNow
  alias OriginsSdk.Libraries.UpdateLibrary
  alias OriginsSdk.Libraries.UpdateLibraryFile
  alias OriginsSdk.Libraries.UpdateLibrarySyncFilter
  alias OriginsSdk.Libraries.UpsertWebsiteScrapeLibraryFile

  @doc """
  Run the `create_library` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_library(%CreateLibrary.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "create_library",
        "input" => CreateLibrary.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_library_access_grant` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_library_access_grant(%CreateLibraryAccessGrant.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryAccessGrant)

    payload =
      %{
        "action" => "create_library_access_grant",
        "input" => CreateLibraryAccessGrant.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryAccessGrant.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_library_file` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_library_file(%CreateLibraryFile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "create_library_file",
        "input" => CreateLibraryFile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_library_file_inline` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_library_file_inline(%CreateLibraryFileInline.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "create_library_file_inline",
        "input" => CreateLibraryFileInline.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_library` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_library(%DeleteLibrary.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "delete_library",
        "input" => DeleteLibrary.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_library_access_grant` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_library_access_grant(%DeleteLibraryAccessGrant.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryAccessGrant)

    payload =
      %{
        "action" => "delete_library_access_grant",
        "input" => DeleteLibraryAccessGrant.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryAccessGrant.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_library_file` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_library_file(%DeleteLibraryFile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "delete_library_file",
        "input" => DeleteLibraryFile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_drive_connection_for_entity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_drive_connection_for_entity(%GetDriveConnectionForEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, DriveConnection)

    payload =
      %{
        "action" => "get_drive_connection_for_entity",
        "input" => GetDriveConnectionForEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &DriveConnection.from_list/1, nil)
    end
  end


  @doc """
  Run the `get_github_connection_for_entity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_github_connection_for_entity(%GetGithubConnectionForEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, GithubConnection)

    payload =
      %{
        "action" => "get_github_connection_for_entity",
        "input" => GetGithubConnectionForEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &GithubConnection.from_list/1, nil)
    end
  end


  @doc """
  Run the `get_library` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_library(%GetLibrary.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "get_library",
        "input" => GetLibrary.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_library_file` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_library_file(%GetLibraryFile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "get_library_file",
        "input" => GetLibraryFile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_json/1, nil)
    end
  end


  @doc """
  Generate OAuth URL and state for Google Drive authentication

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def initiate_drive_oauth(%InitiateDriveOauth.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "initiate_drive_oauth",
        "input" => InitiateDriveOauth.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Generate GitHub App install URL + signed state token.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def initiate_github_oauth(%InitiateGithubOauth.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "initiate_github_oauth",
        "input" => InitiateGithubOauth.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run a bash command against one or more attached Libraries.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def library_shell_exec(%LibraryShellExec.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "library_shell_exec",
        "input" => LibraryShellExec.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  List every file path visible across the given Libraries.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def library_shell_list_tree(%LibraryShellListTree.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "library_shell_list_tree",
        "input" => LibraryShellListTree.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Read a single file from one of the given Libraries.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def library_shell_read(%LibraryShellRead.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "library_shell_read",
        "input" => LibraryShellRead.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  List branches of a repository, scoped to a connection.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def list_github_branches(%ListGithubBranches.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "list_github_branches",
        "input" => ListGithubBranches.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  List repositories accessible to this App installation.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def list_github_repositories(%ListGithubRepositories.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "list_github_repositories",
        "input" => ListGithubRepositories.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `list_libraries` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_libraries(%ListLibraries.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "list_libraries",
        "input" => ListLibraries.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_list/1, nil)
    end
  end


  @doc """
  All Libraries owned by an Origin AND any descendant Origins (to
  arbitrary depth). Powers the brand `/:slug/knowledge` management
  surface where the operator expects to see everything across their
  tenancy. Restores the pre-cutover behavior of
  `KnowledgeItem.list_for_origin`. Access stays gated by
  `LibraryReadable` — the preparation just widens the candidate set.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_libraries_for_origin(%ListLibrariesForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "list_libraries_for_origin",
        "input" => ListLibrariesForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_library_access_grants` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_library_access_grants(%ListLibraryAccessGrants.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryAccessGrant)

    payload =
      %{
        "action" => "list_library_access_grants",
        "input" => ListLibraryAccessGrants.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryAccessGrant.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_library_files` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_library_files(%ListLibraryFiles.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "list_library_files",
        "input" => ListLibraryFiles.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_list/1, nil)
    end
  end


  @doc """
  All LibraryFiles in a Library.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_library_files_for_library(%ListLibraryFilesForLibrary.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "list_library_files_for_library",
        "input" => ListLibraryFilesForLibrary.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_list/1, nil)
    end
  end


  @doc """
  Dry-run a proposed sync filter against this Library's currently-tracked
  files: returns how many files (and cascaded video assets) the next sync
  would orphan-remove, plus the removed paths. Powers the SPA confirmation
  step before a tightened filter is saved.
  

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def preview_library_sync_filter(%PreviewLibrarySyncFilter.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "preview_library_sync_filter",
        "input" => PreviewLibrarySyncFilter.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run a one-shot source-adapter sync for this Library.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def sync_library_now(%SyncLibraryNow.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "sync_library_now",
        "input" => SyncLibraryNow.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `update_library` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_library(%UpdateLibrary.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "update_library",
        "input" => UpdateLibrary.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_library_file` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_library_file(%UpdateLibraryFile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "update_library_file",
        "input" => UpdateLibraryFile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_json/1, nil)
    end
  end


  @doc """
  Set this Library's sync filter (include/exclude path globs) under
  `adapter_config["filters"]`, leaving the rest of the adapter config
  intact. Tightening the filter orphan-removes the now-excluded files on
  the next sync — the SPA shows `Origins.Libraries.FilterImpact` first.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_library_sync_filter(%UpdateLibrarySyncFilter.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Library)

    payload =
      %{
        "action" => "update_library_sync_filter",
        "input" => UpdateLibrarySyncFilter.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Library.from_json/1, nil)
    end
  end


  @doc """
  Create or update a website-scrape file in a Library, keyed by (library_id, source_metadata.url).

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def upsert_website_scrape_library_file(%UpsertWebsiteScrapeLibraryFile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, LibraryFile)

    payload =
      %{
        "action" => "upsert_website_scrape_library_file",
        "input" => UpsertWebsiteScrapeLibraryFile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &LibraryFile.from_json/1, nil)
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
