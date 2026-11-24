defmodule OriginsSdk.Agent.MarkConversationReviewed do
  @moduledoc """
  Input + metadata types for `mark_conversation_reviewed`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `mark_conversation_reviewed`."

    @type t :: %__MODULE__{
          conversation_id: String.t()
        }

    @enforce_keys [:conversation_id]
    defstruct [:conversation_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"conversation_id" => input.conversation_id}
    end
  end


end
