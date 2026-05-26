defmodule OriginsSdk.Identity.ListPromptToolsForOrigin do
  @moduledoc """
  Input + metadata types for `list_prompt_tools_for_origin`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_prompt_tools_for_origin`."

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
