defmodule OriginsSdk.Agent.AvatarPublicChat do
  @moduledoc """
  Input + metadata types for `avatar_public_chat`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `avatar_public_chat`."

    @type t :: %__MODULE__{
          context_id: String.t() | nil,
          conversation_history: list() | nil,
          conversation_id: String.t() | nil,
          episode_id: String.t() | nil,
          ip_address: String.t() | nil,
          message: String.t(),
          origin_entity_id: String.t(),
          session_id: String.t() | nil
        }

    @enforce_keys [:message, :origin_entity_id]
    defstruct [:context_id, :conversation_history, :conversation_id, :episode_id, :ip_address, :message, :origin_entity_id, :session_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"context_id" => input.context_id, "conversation_history" => input.conversation_history, "conversation_id" => input.conversation_id, "episode_id" => input.episode_id, "ip_address" => input.ip_address, "message" => input.message, "origin_entity_id" => input.origin_entity_id, "session_id" => input.session_id}
    end
  end


end
