defmodule OriginsSdk.Identity.OriginAsset do
  @moduledoc """
  Mirror of `Origins.Identity.OriginAsset` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    asset_key: String.t() | nil,
    asset_metadata: map() | nil,
    asset_name: String.t() | nil,
    asset_type: String.t(),
    asset_url: String.t(),
    created_at: DateTime.t(),
    id: String.t(),
    is_shared_globally: boolean() | nil,
    origin_entity_id: String.t(),
    shared_with_origin_entity_ids: list() | nil,
    source_platform: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :asset_key,
    :asset_metadata,
    :asset_name,
    :asset_type,
    :asset_url,
    :created_at,
    :id,
    :is_shared_globally,
    :origin_entity_id,
    :shared_with_origin_entity_ids,
    :source_platform,
    :updated_at
  ]

  @primitive_fields ~w(asset_key asset_metadata asset_name asset_type asset_url created_at id is_shared_globally origin_entity_id shared_with_origin_entity_ids source_platform updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      asset_key: map["asset_key"],
      asset_metadata: map["asset_metadata"],
      asset_name: map["asset_name"],
      asset_type: map["asset_type"],
      asset_url: map["asset_url"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      is_shared_globally: map["is_shared_globally"],
      origin_entity_id: map["origin_entity_id"],
      shared_with_origin_entity_ids: map["shared_with_origin_entity_ids"],
      source_platform: map["source_platform"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
