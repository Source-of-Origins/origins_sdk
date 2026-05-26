defmodule OriginsSdk.Identity.DiscoverEntityLinks do
  @moduledoc """
  Input + metadata types for `discover_entity_links`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `discover_entity_links`."

    @type t :: %__MODULE__{
          category_hint: String.t(),
          entity_name: String.t()
        }

    @enforce_keys [:category_hint, :entity_name]
    defstruct [:category_hint, :entity_name]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"category_hint" => input.category_hint, "entity_name" => input.entity_name}
    end
  end


end
