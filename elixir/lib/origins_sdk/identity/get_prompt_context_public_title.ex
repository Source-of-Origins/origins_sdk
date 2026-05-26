defmodule OriginsSdk.Identity.GetPromptContextPublicTitle do
  @moduledoc """
  Input + metadata types for `get_prompt_context_public_title`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_prompt_context_public_title`."

    @type t :: %__MODULE__{
          context_id: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:context_id, :origin_entity_id]
    defstruct [:context_id, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"context_id" => input.context_id, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
