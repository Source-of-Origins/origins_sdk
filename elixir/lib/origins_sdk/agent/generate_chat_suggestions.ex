defmodule OriginsSdk.Agent.GenerateChatSuggestions do
  @moduledoc """
  Input + metadata types for `generate_chat_suggestions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_chat_suggestions`."

    @type t :: %__MODULE__{
          avatar_context: map() | nil,
          conversation_id: String.t() | nil,
          messages: list() | nil
        }

    @enforce_keys []
    defstruct [:avatar_context, :conversation_id, :messages]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"avatar_context" => input.avatar_context, "conversation_id" => input.conversation_id, "messages" => input.messages}
    end
  end


end
