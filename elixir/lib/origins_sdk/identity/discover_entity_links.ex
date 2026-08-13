defmodule OriginsSdk.Identity.DiscoverEntityLinks do
  @moduledoc """
  Input + metadata types for `discover_entity_links`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `discover_entity_links`."

    @type t :: %__MODULE__{
          category_hint: String.t(),
          entity_name: String.t(),
          origin_entity_id: String.t() | nil
        }

    @enforce_keys [:category_hint, :entity_name]
    defstruct [:category_hint, :entity_name, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"category_hint" => input.category_hint, "entity_name" => input.entity_name, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
