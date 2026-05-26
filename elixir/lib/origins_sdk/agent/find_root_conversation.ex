defmodule OriginsSdk.Agent.FindRootConversation do
  @moduledoc """
  Input + metadata types for `find_root_conversation`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `find_root_conversation`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t(),
          session_id: String.t() | nil,
          user_id: String.t() | nil
        }

    @enforce_keys [:origin_entity_id]
    defstruct [:origin_entity_id, :session_id, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "session_id" => input.session_id, "user_id" => input.user_id}
    end
  end


end
