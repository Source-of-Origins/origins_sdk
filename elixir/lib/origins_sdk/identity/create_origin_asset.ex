defmodule OriginsSdk.Identity.CreateOriginAsset do
  @moduledoc """
  Input + metadata types for `create_origin_asset`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_origin_asset`."

    @type t :: %__MODULE__{
          asset_key: String.t() | nil,
          asset_metadata: map() | nil,
          asset_name: String.t() | nil,
          asset_type: String.t(),
          asset_url: String.t(),
          is_shared_globally: boolean() | nil,
          origin_entity_id: String.t(),
          shared_with_origin_entity_ids: list() | nil,
          source_platform: String.t() | nil
        }

    @enforce_keys [:asset_type, :asset_url, :origin_entity_id]
    defstruct [:asset_key, :asset_metadata, :asset_name, :asset_type, :asset_url, :is_shared_globally, :origin_entity_id, :shared_with_origin_entity_ids, :source_platform]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"asset_key" => input.asset_key, "asset_metadata" => input.asset_metadata, "asset_name" => input.asset_name, "asset_type" => input.asset_type, "asset_url" => input.asset_url, "is_shared_globally" => input.is_shared_globally, "origin_entity_id" => input.origin_entity_id, "shared_with_origin_entity_ids" => input.shared_with_origin_entity_ids, "source_platform" => input.source_platform}
    end
  end


end
