defmodule OriginsSdk.Agent.GenerateChatSuggestions do
  @moduledoc """
  Input + metadata types for `generate_chat_suggestions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_chat_suggestions`."

    @type t :: %__MODULE__{
          avatar_context: map(),
          messages: list()
        }

    @enforce_keys [:avatar_context, :messages]
    defstruct [:avatar_context, :messages]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"avatar_context" => input.avatar_context, "messages" => input.messages}
    end
  end


end
