defmodule OriginsSdk.Identity.UpdateOriginEntityBrandTheme do
  @moduledoc """
  Input + metadata types for `update_origin_entity_brand_theme`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_origin_entity_brand_theme`."

    @type t :: %__MODULE__{
          brand_theme: any() | nil
        }

    @enforce_keys []
    defstruct [:brand_theme]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"brand_theme" => input.brand_theme}
    end
  end


end
