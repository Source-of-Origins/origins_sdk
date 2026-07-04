defmodule OriginsSdk.Apps.StartProgramTestRun do
  @moduledoc """
  Input + metadata types for `start_program_test_run`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `start_program_test_run`."

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
