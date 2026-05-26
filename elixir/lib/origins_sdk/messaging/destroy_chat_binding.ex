defmodule OriginsSdk.Messaging.DestroyChatBinding do
  @moduledoc """
  Input + metadata types for `destroy_chat_binding`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `destroy_chat_binding`."

    @type t :: %__MODULE__{

        }

    @enforce_keys []
    defstruct []

    @doc false
    def to_json(%__MODULE__{} = _input) do
      %{}
    end
  end


end
