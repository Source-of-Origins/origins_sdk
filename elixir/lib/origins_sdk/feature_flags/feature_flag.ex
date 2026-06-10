defmodule OriginsSdk.FeatureFlags.FeatureFlag do
  @moduledoc """
  Mirror of `Origins.FeatureFlags.FeatureFlag` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    enabled: boolean(),
    feature_name: String.t(),
    id: String.t(),
    origin_entity_id: String.t(),
    updated_at: DateTime.t()
    }

  defstruct [
    :created_at,
    :enabled,
    :feature_name,
    :id,
    :origin_entity_id,
    :updated_at
  ]

  @primitive_fields ~w(created_at enabled feature_name id origin_entity_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      enabled: map["enabled"],
      feature_name: map["feature_name"],
      id: map["id"],
      origin_entity_id: map["origin_entity_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
