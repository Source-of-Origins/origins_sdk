defmodule OriginsSdk.Messaging.ListAllChatBindings do
  @moduledoc """
  Input + metadata types for `list_all_chat_bindings`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_all_chat_bindings`."

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
