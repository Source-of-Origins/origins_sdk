defmodule OriginsSdk.Libraries.DriveConnection do
  @moduledoc """
  Mirror of `Origins.Libraries.DriveConnection` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    connected_by_user_id: String.t() | nil,
    created_at: DateTime.t(),
    entity_profile_id: String.t(),
    google_email: String.t() | nil,
    id: String.t(),
    status: any() | nil,
    token_expires_at: DateTime.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :connected_by_user_id,
    :created_at,
    :entity_profile_id,
    :google_email,
    :id,
    :status,
    :token_expires_at,
    :updated_at
  ]

  @primitive_fields ~w(connected_by_user_id created_at entity_profile_id google_email id status token_expires_at updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      connected_by_user_id: map["connected_by_user_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      entity_profile_id: map["entity_profile_id"],
      google_email: map["google_email"],
      id: map["id"],
      status: map["status"],
      token_expires_at: OriginsSdk.Internal.decode_datetime(map["token_expires_at"]),
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
