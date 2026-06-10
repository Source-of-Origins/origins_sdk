defmodule OriginsSdk.Accounts.StaffTenantGrant do
  @moduledoc """
  Mirror of `Origins.Accounts.StaffTenantGrant` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    granted_at: DateTime.t(),
    id: String.t(),
    revoked_at: DateTime.t() | nil,
    tenant_id: String.t(),
    updated_at: DateTime.t(),
    user_id: String.t()
    }

  defstruct [
    :created_at,
    :granted_at,
    :id,
    :revoked_at,
    :tenant_id,
    :updated_at,
    :user_id
  ]

  @primitive_fields ~w(created_at granted_at id revoked_at tenant_id updated_at user_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      granted_at: OriginsSdk.Internal.decode_datetime(map["granted_at"]),
      id: map["id"],
      revoked_at: OriginsSdk.Internal.decode_datetime(map["revoked_at"]),
      tenant_id: map["tenant_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_id: map["user_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
