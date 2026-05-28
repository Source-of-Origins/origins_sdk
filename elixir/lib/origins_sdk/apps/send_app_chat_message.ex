defmodule OriginsSdk.Apps.SendAppChatMessage do
  @moduledoc """
  Input + metadata types for `send_app_chat_message`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `send_app_chat_message`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          message: String.t()
        }

    @enforce_keys [:app_id, :message]
    defstruct [:app_id, :message]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "message" => input.message}
    end
  end


end
