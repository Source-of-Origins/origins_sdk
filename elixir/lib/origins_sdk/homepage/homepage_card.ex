defmodule OriginsSdk.Homepage.HomepageCard do
  @moduledoc """
  Mirror of `Origins.Homepage.HomepageCard` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    ai_enabled: boolean(),
    avatar_key: String.t() | nil,
    avatar_shape: String.t() | nil,
    avatar_size: String.t() | nil,
    avatar_url: String.t() | nil,
    avatar_vertical_position: Decimal.t() | nil,
    background_color: String.t() | nil,
    created_at: DateTime.t(),
    custom_url: String.t() | nil,
    description: String.t() | nil,
    destination_type: String.t(),
    gradient: String.t(),
    id: String.t(),
    is_active: boolean(),
    name: String.t(),
    order_index: integer(),
    origin_entity_id: String.t() | nil,
    presigned_avatar_url: String.t() | nil,
    role: String.t(),
    tags: list() | nil,
    updated_at: DateTime.t(),
    use_gradient: boolean() | nil
    }

  defstruct [
    :ai_enabled,
    :avatar_key,
    :avatar_shape,
    :avatar_size,
    :avatar_url,
    :avatar_vertical_position,
    :background_color,
    :created_at,
    :custom_url,
    :description,
    :destination_type,
    :gradient,
    :id,
    :is_active,
    :name,
    :order_index,
    :origin_entity_id,
    :presigned_avatar_url,
    :role,
    :tags,
    :updated_at,
    :use_gradient
  ]

  @primitive_fields ~w(ai_enabled avatar_key avatar_shape avatar_size avatar_url avatar_vertical_position background_color created_at custom_url description destination_type gradient id is_active name order_index origin_entity_id presigned_avatar_url role tags updated_at use_gradient)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:ai_enabled, :avatar_key, :avatar_shape, :avatar_size, :avatar_url, :avatar_vertical_position, :background_color, :created_at, :custom_url, :description, :destination_type, :gradient, :id, :is_active, :name, :order_index, :origin_entity_id, :presigned_avatar_url, :role, :tags, :updated_at, :use_gradient]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      ai_enabled: map["ai_enabled"],
      avatar_key: map["avatar_key"],
      avatar_shape: map["avatar_shape"],
      avatar_size: map["avatar_size"],
      avatar_url: map["avatar_url"],
      avatar_vertical_position: map["avatar_vertical_position"],
      background_color: map["background_color"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      custom_url: map["custom_url"],
      description: map["description"],
      destination_type: map["destination_type"],
      gradient: map["gradient"],
      id: map["id"],
      is_active: map["is_active"],
      name: map["name"],
      order_index: map["order_index"],
      origin_entity_id: map["origin_entity_id"],
      presigned_avatar_url: map["presigned_avatar_url"],
      role: map["role"],
      tags: map["tags"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      use_gradient: map["use_gradient"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
