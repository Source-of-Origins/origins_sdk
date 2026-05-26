defmodule OriginsSdk.Homepage.CreateHomepageCard do
  @moduledoc """
  Input + metadata types for `create_homepage_card`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_homepage_card`."

    @type t :: %__MODULE__{
          ai_enabled: boolean(),
          avatar_key: String.t() | nil,
          avatar_shape: String.t() | nil,
          avatar_size: String.t() | nil,
          avatar_url: String.t() | nil,
          avatar_vertical_position: Decimal.t() | nil,
          background_color: String.t() | nil,
          custom_url: String.t() | nil,
          description: String.t() | nil,
          destination_type: String.t(),
          gradient: String.t(),
          is_active: boolean(),
          name: String.t(),
          order_index: integer(),
          origin_entity_id: String.t() | nil,
          role: String.t(),
          tags: list() | nil,
          use_gradient: boolean() | nil
        }

    @enforce_keys [:ai_enabled, :destination_type, :gradient, :is_active, :name, :order_index, :role]
    defstruct [:ai_enabled, :avatar_key, :avatar_shape, :avatar_size, :avatar_url, :avatar_vertical_position, :background_color, :custom_url, :description, :destination_type, :gradient, :is_active, :name, :order_index, :origin_entity_id, :role, :tags, :use_gradient]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"ai_enabled" => input.ai_enabled, "avatar_key" => input.avatar_key, "avatar_shape" => input.avatar_shape, "avatar_size" => input.avatar_size, "avatar_url" => input.avatar_url, "avatar_vertical_position" => input.avatar_vertical_position, "background_color" => input.background_color, "custom_url" => input.custom_url, "description" => input.description, "destination_type" => input.destination_type, "gradient" => input.gradient, "is_active" => input.is_active, "name" => input.name, "order_index" => input.order_index, "origin_entity_id" => input.origin_entity_id, "role" => input.role, "tags" => input.tags, "use_gradient" => input.use_gradient}
    end
  end


end
