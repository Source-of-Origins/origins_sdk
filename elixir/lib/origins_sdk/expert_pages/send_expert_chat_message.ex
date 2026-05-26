defmodule OriginsSdk.ExpertPages.SendExpertChatMessage do
  @moduledoc """
  Input + metadata types for `send_expert_chat_message`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `send_expert_chat_message`."

    @type t :: %__MODULE__{
          expert_page_id: String.t(),
          message: String.t()
        }

    @enforce_keys [:expert_page_id, :message]
    defstruct [:expert_page_id, :message]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"expert_page_id" => input.expert_page_id, "message" => input.message}
    end
  end


end
