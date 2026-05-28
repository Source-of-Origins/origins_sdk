defmodule OriginsSdk.Accounts do
  @moduledoc """
  RPC actions on the `Origins.Accounts` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Accounts.ApproveWaitlistEntry
  alias OriginsSdk.Accounts.DeleteWaitlistEntry
  alias OriginsSdk.Accounts.GetCurrentUser
  alias OriginsSdk.Accounts.GetTenant
  alias OriginsSdk.Accounts.GetWaitlistEntryByToken
  alias OriginsSdk.Accounts.ListAllUsers
  alias OriginsSdk.Accounts.ListWaitlistEntries
  alias OriginsSdk.Accounts.RegisterWithInvitation
  alias OriginsSdk.Accounts.RegisterWithPassword
  alias OriginsSdk.Accounts.RejectWaitlistEntry
  alias OriginsSdk.Accounts.SignInWithPassword
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
