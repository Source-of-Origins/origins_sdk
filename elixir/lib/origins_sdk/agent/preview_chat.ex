defmodule OriginsSdk.Agent.PreviewChat do
  @moduledoc """
  Input + metadata types for `preview_chat`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `preview_chat`."

    @type t :: %__MODULE__{
          context_id: String.t() | nil,
          conversation_history: list() | nil,
          conversation_id: String.t() | nil,
          message: String.t(),
          origin_entity_id: String.t(),
          session_id: String.t() | nil
        }

    @enforce_keys [:message, :origin_entity_id]
    defstruct [:context_id, :conversation_history, :conversation_id, :message, :origin_entity_id, :session_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"context_id" => input.context_id, "conversation_history" => input.conversation_history, "conversation_id" => input.conversation_id, "message" => input.message, "origin_entity_id" => input.origin_entity_id, "session_id" => input.session_id}
    end
  end


end
