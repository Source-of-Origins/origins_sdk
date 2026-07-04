defmodule OriginsSdk.Apps.GetProgramMemory do
  @moduledoc """
  Input + metadata types for `get_program_memory`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_program_memory`."

    @type t :: %__MODULE__{
          test_id: String.t()
        }

    @enforce_keys [:test_id]
    defstruct [:test_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"test_id" => input.test_id}
    end
  end


end
