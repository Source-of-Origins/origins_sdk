defmodule OriginsSdk.Accounts.User do
  @moduledoc """
  Mirror of `Origins.Accounts.User` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    aud: String.t() | nil,
    banned_until: DateTime.t() | nil,
    confirmation_sent_at: DateTime.t() | nil,
    confirmed_at: DateTime.t() | nil,
    created_at: DateTime.t() | nil,
    deleted_at: DateTime.t() | nil,
    email: String.t(),
    email_confirmed_at: DateTime.t() | nil,
    id: String.t(),
    instance_id: String.t() | nil,
    invited_at: DateTime.t() | nil,
    is_super_admin: boolean() | nil,
    last_sign_in_at: DateTime.t() | nil,
    phone: String.t() | nil,
    phone_change_sent_at: DateTime.t() | nil,
    phone_confirmed_at: DateTime.t() | nil,
    raw_app_meta_data: map() | nil,
    raw_user_meta_data: map() | nil,
    reauthentication_sent_at: DateTime.t() | nil,
    recovery_sent_at: DateTime.t() | nil,
    role: String.t() | nil,
    tenant_id: String.t(),
    updated_at: DateTime.t()
    }

  defstruct [
    :aud,
    :banned_until,
    :confirmation_sent_at,
    :confirmed_at,
    :created_at,
    :deleted_at,
    :email,
    :email_confirmed_at,
    :id,
    :instance_id,
    :invited_at,
    :is_super_admin,
    :last_sign_in_at,
    :phone,
    :phone_change_sent_at,
    :phone_confirmed_at,
    :raw_app_meta_data,
    :raw_user_meta_data,
    :reauthentication_sent_at,
    :recovery_sent_at,
    :role,
    :tenant_id,
    :updated_at
  ]

  @primitive_fields ~w(aud banned_until confirmation_sent_at confirmed_at created_at deleted_at email email_confirmed_at id instance_id invited_at is_super_admin last_sign_in_at phone phone_change_sent_at phone_confirmed_at raw_app_meta_data raw_user_meta_data reauthentication_sent_at recovery_sent_at role tenant_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      aud: map["aud"],
      banned_until: OriginsSdk.Internal.decode_datetime(map["banned_until"]),
      confirmation_sent_at: OriginsSdk.Internal.decode_datetime(map["confirmation_sent_at"]),
      confirmed_at: OriginsSdk.Internal.decode_datetime(map["confirmed_at"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      deleted_at: OriginsSdk.Internal.decode_datetime(map["deleted_at"]),
      email: map["email"],
      email_confirmed_at: OriginsSdk.Internal.decode_datetime(map["email_confirmed_at"]),
      id: map["id"],
      instance_id: map["instance_id"],
      invited_at: OriginsSdk.Internal.decode_datetime(map["invited_at"]),
      is_super_admin: map["is_super_admin"],
      last_sign_in_at: OriginsSdk.Internal.decode_datetime(map["last_sign_in_at"]),
      phone: map["phone"],
      phone_change_sent_at: OriginsSdk.Internal.decode_datetime(map["phone_change_sent_at"]),
      phone_confirmed_at: OriginsSdk.Internal.decode_datetime(map["phone_confirmed_at"]),
      raw_app_meta_data: map["raw_app_meta_data"],
      raw_user_meta_data: map["raw_user_meta_data"],
      reauthentication_sent_at: OriginsSdk.Internal.decode_datetime(map["reauthentication_sent_at"]),
      recovery_sent_at: OriginsSdk.Internal.decode_datetime(map["recovery_sent_at"]),
      role: map["role"],
      tenant_id: map["tenant_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
