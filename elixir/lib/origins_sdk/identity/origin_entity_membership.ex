defmodule OriginsSdk.Identity.OriginEntityMembership do
  @moduledoc """
  Mirror of `Origins.Identity.OriginEntityMembership` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    accepted_at: DateTime.t() | nil,
    created_at: DateTime.t(),
    expires_at: DateTime.t() | nil,
    id: String.t(),
    invitation_token: String.t() | nil,
    invited_by: String.t() | nil,
    invited_email: String.t() | nil,
    joined_at: DateTime.t(),
    origin_entity_id: String.t(),
    role: any(),
    status: any(),
    updated_at: DateTime.t(),
    user_id: String.t() | nil
    }

  defstruct [
    :accepted_at,
    :created_at,
    :expires_at,
    :id,
    :invitation_token,
    :invited_by,
    :invited_email,
    :joined_at,
    :origin_entity_id,
    :role,
    :status,
    :updated_at,
    :user_id
  ]

  @primitive_fields ~w(accepted_at created_at expires_at id invitation_token invited_by invited_email joined_at origin_entity_id role status updated_at user_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      accepted_at: OriginsSdk.Internal.decode_datetime(map["accepted_at"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      expires_at: OriginsSdk.Internal.decode_datetime(map["expires_at"]),
      id: map["id"],
      invitation_token: map["invitation_token"],
      invited_by: map["invited_by"],
      invited_email: map["invited_email"],
      joined_at: OriginsSdk.Internal.decode_datetime(map["joined_at"]),
      origin_entity_id: map["origin_entity_id"],
      role: map["role"],
      status: map["status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_id: map["user_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
