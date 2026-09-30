defmodule OriginsSdk.Letta.UpdateAgentMemory do
  @moduledoc """
  Input + metadata types for `update_agent_memory`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_agent_memory`."

    @type t :: %__MODULE__{
          value: String.t() | nil
        }

    @enforce_keys []
    defstruct [:value]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"value" => input.value}
    end
  end


end
