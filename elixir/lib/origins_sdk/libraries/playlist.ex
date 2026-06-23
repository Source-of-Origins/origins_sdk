defmodule OriginsSdk.Libraries.Playlist do
  @moduledoc """
  Mirror of `Origins.Libraries.Playlist` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    description: String.t() | nil,
    id: String.t(),
    item_count: integer(),
    title: String.t(),
    updated_at: DateTime.t(),
    user_id: String.t()
    }

  defstruct [
    :created_at,
    :description,
    :id,
    :item_count,
    :title,
    :updated_at,
    :user_id
  ]

  @primitive_fields ~w(created_at description id item_count title updated_at user_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      description: map["description"],
      id: map["id"],
      item_count: map["item_count"],
      title: map["title"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_id: map["user_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
