defmodule OriginsSdk.Apps.InheritedTheme do
  @moduledoc """
  Input + metadata types for `inherited_theme`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `inherited_theme`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t(),
          page_type: String.t()
        }

    @enforce_keys [:origin_entity_id, :page_type]
    defstruct [:origin_entity_id, :page_type]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "page_type" => input.page_type}
    end
  end


end
