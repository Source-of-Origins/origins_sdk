defmodule OriginsSdk.Letta.ForgetAgentMemory do
  @moduledoc """
  Input + metadata types for `forget_agent_memory`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `forget_agent_memory`."

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
