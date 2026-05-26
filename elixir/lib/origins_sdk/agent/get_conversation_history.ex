defmodule OriginsSdk.Agent.GetConversationHistory do
  @moduledoc """
  Input + metadata types for `get_conversation_history`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_conversation_history`."

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
