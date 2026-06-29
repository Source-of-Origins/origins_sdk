defmodule OriginsSdk.Libraries.RequestStaticRenditions do
  @moduledoc """
  Input + metadata types for `request_static_renditions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `request_static_renditions`."

    @type t :: %__MODULE__{
          otterwake_asset_id: String.t(),
          resolutions: list(),
          source_storage_path: String.t()
        }

    @enforce_keys [:otterwake_asset_id, :resolutions, :source_storage_path]
    defstruct [:otterwake_asset_id, :resolutions, :source_storage_path]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"otterwake_asset_id" => input.otterwake_asset_id, "resolutions" => input.resolutions, "source_storage_path" => input.source_storage_path}
    end
  end


end
