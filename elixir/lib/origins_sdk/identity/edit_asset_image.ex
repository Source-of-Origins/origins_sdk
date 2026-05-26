defmodule OriginsSdk.Identity.EditAssetImage do
  @moduledoc """
  Input + metadata types for `edit_asset_image`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `edit_asset_image`."

    @type t :: %__MODULE__{
          asset_name: String.t() | nil,
          asset_type: String.t() | nil,
          edit_mode: String.t() | nil,
          image_url: String.t(),
          origin_entity_id: String.t(),
          prompt: String.t()
        }

    @enforce_keys [:image_url, :origin_entity_id, :prompt]
    defstruct [:asset_name, :asset_type, :edit_mode, :image_url, :origin_entity_id, :prompt]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"asset_name" => input.asset_name, "asset_type" => input.asset_type, "edit_mode" => input.edit_mode, "image_url" => input.image_url, "origin_entity_id" => input.origin_entity_id, "prompt" => input.prompt}
    end
  end


end
