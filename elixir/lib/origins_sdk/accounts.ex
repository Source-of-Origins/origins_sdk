defmodule OriginsSdk.Accounts do
  @moduledoc """
  RPC actions on the `Origins.Accounts` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Accounts.ApproveWaitlistEntry
  alias OriginsSdk.Accounts.CreateTenantForUser
  alias OriginsSdk.Accounts.DeleteWaitlistEntry
  alias OriginsSdk.Accounts.GetCurrentUser
  alias OriginsSdk.Accounts.GetTenant
  alias OriginsSdk.Accounts.GetWaitlistEntryByToken
  alias OriginsSdk.Accounts.ListAllTenants
  alias OriginsSdk.Accounts.ListAllUsers
  alias OriginsSdk.Accounts.ListMyTenantGrants
  alias OriginsSdk.Accounts.ListMyTenants
  alias OriginsSdk.Accounts.ListWaitlistEntries
  alias OriginsSdk.Accounts.RegisterWithInvitation
  alias OriginsSdk.Accounts.RegisterWithPassword
  alias OriginsSdk.Accounts.RejectWaitlistEntry
  alias OriginsSdk.Accounts.SignInWithAppleToken
  alias OriginsSdk.Accounts.SignInWithGoogleToken
  alias OriginsSdk.Accounts.SignInWithPassword
  alias OriginsSdk.Accounts.StaffTenantGrant
  alias OriginsSdk.Accounts.StartTenantSession
  alias OriginsSdk.Accounts.SubmitWaitlistEntry
  alias OriginsSdk.Accounts.Tenant
  alias OriginsSdk.Accounts.User
  alias OriginsSdk.Accounts.WaitlistEntry

  @doc """
  Run the `approve_waitlist_entry` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def approve_waitlist_entry(%ApproveWaitlistEntry.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WaitlistEntry)

    payload =
      %{
        "action" => "approve_waitlist_entry",
        "input" => ApproveWaitlistEntry.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WaitlistEntry.from_json/1, nil)
    end
  end


  @doc """
  Mint a new tenant (with its root OE and an owner membership) for the
  currently authenticated user. Used by the in-app wizard's top-level
  "New Origin" path — see `Origins.Accounts.Actions.CreateTenantForUser`.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_tenant_for_user(%CreateTenantForUser.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Tenant)

    payload =
      %{
        "action" => "create_tenant_for_user",
        "input" => CreateTenantForUser.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Tenant.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_waitlist_entry` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_waitlist_entry(%DeleteWaitlistEntry.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WaitlistEntry)

    payload =
      %{
        "action" => "delete_waitlist_entry",
        "input" => DeleteWaitlistEntry.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WaitlistEntry.from_json/1, nil)
    end
  end


  @doc """
  Get the current authenticated user

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_current_user(%GetCurrentUser.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "get_current_user",
        "input" => GetCurrentUser.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_tenant` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_tenant(%GetTenant.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Tenant)

    payload =
      %{
        "action" => "get_tenant",
        "input" => GetTenant.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Tenant.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_waitlist_entry_by_token` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_waitlist_entry_by_token(%GetWaitlistEntryByToken.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WaitlistEntry)

    payload =
      %{
        "action" => "get_waitlist_entry_by_token",
        "input" => GetWaitlistEntryByToken.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WaitlistEntry.from_json/1, nil)
    end
  end


  @doc """
  List every tenant. Super-admin only — used by the Switcher.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_all_tenants(%ListAllTenants.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Tenant)

    payload =
      %{
        "action" => "list_all_tenants",
        "input" => ListAllTenants.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Tenant.from_json/1, nil)
    end
  end


  @doc """
  List all users (super admin only)

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_all_users(%ListAllUsers.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "list_all_users",
        "input" => ListAllUsers.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, nil)
    end
  end


  @doc """
  Active grants for the calling user. Used by the SPA tenant switcher.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_my_tenant_grants(%ListMyTenantGrants.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, StaffTenantGrant)

    payload =
      %{
        "action" => "list_my_tenant_grants",
        "input" => ListMyTenantGrants.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &StaffTenantGrant.from_json/1, nil)
    end
  end


  @doc """
  The tenants the actor may act in: their home tenant plus every tenant they
  hold an active StaffTenantGrant on, or every active tenant for a
  super-admin. Single source of truth for the Switcher's top-level list; see
  `Origins.Accounts.TenantEntry`.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_my_tenants(%ListMyTenants.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Tenant)

    payload =
      %{
        "action" => "list_my_tenants",
        "input" => ListMyTenants.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Tenant.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_waitlist_entries` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_waitlist_entries(%ListWaitlistEntries.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WaitlistEntry)

    payload =
      %{
        "action" => "list_waitlist_entries",
        "input" => ListWaitlistEntries.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WaitlistEntry.from_json/1, nil)
    end
  end


  @doc """
  Register a new user via waitlist invitation token.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def register_with_invitation(%RegisterWithInvitation.Input{} = input, opts \\ []) do
    metadata_fields = opts[:metadata_fields] || RegisterWithInvitation.Metadata.fields()
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "register_with_invitation",
        "input" => RegisterWithInvitation.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> Map.put("metadata_fields", Enum.map(metadata_fields, &Atom.to_string/1))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, &RegisterWithInvitation.Metadata.from_json/1)
    end
  end


  @doc """
  Register a new user with a email and password.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def register_with_password(%RegisterWithPassword.Input{} = input, opts \\ []) do
    metadata_fields = opts[:metadata_fields] || RegisterWithPassword.Metadata.fields()
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "register_with_password",
        "input" => RegisterWithPassword.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> Map.put("metadata_fields", Enum.map(metadata_fields, &Atom.to_string/1))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, &RegisterWithPassword.Metadata.from_json/1)
    end
  end


  @doc """
  Run the `reject_waitlist_entry` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def reject_waitlist_entry(%RejectWaitlistEntry.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WaitlistEntry)

    payload =
      %{
        "action" => "reject_waitlist_entry",
        "input" => RejectWaitlistEntry.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WaitlistEntry.from_json/1, nil)
    end
  end


  @doc """
  Verify an Apple id_token, resolve/create the user, and return a JWT (SDK entrypoint).

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def sign_in_with_apple_token(%SignInWithAppleToken.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "sign_in_with_apple_token",
        "input" => SignInWithAppleToken.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, nil)
    end
  end


  @doc """
  Verify a Google id_token, resolve/create the user, and return a JWT (SDK entrypoint).

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def sign_in_with_google_token(%SignInWithGoogleToken.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "sign_in_with_google_token",
        "input" => SignInWithGoogleToken.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, nil)
    end
  end


  @doc """
  Attempt to sign in using a email and password.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def sign_in_with_password(%SignInWithPassword.Input{} = input, opts \\ []) do
    metadata_fields = opts[:metadata_fields] || SignInWithPassword.Metadata.fields()
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "sign_in_with_password",
        "input" => SignInWithPassword.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> Map.put("metadata_fields", Enum.map(metadata_fields, &Atom.to_string/1))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, &SignInWithPassword.Metadata.from_json/1)
    end
  end


  @doc """
  Mint an acting-as-tenant JWT for a tenant the caller has a grant for.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def start_tenant_session(%StartTenantSession.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, User)

    payload =
      %{
        "action" => "start_tenant_session",
        "input" => StartTenantSession.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &User.from_json/1, nil)
    end
  end


  @doc """
  Run the `submit_waitlist_entry` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def submit_waitlist_entry(%SubmitWaitlistEntry.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WaitlistEntry)

    payload =
      %{
        "action" => "submit_waitlist_entry",
        "input" => SubmitWaitlistEntry.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WaitlistEntry.from_json/1, nil)
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
