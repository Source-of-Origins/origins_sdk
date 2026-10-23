defmodule OriginsSdk.Libraries.PullBrandFromLibrary do
  @moduledoc """
  Input + metadata types for `pull_brand_from_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `pull_brand_from_library`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t()
        }

    @enforce_keys [:origin_entity_id]
    defstruct [:origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id}
    end
  end


end
