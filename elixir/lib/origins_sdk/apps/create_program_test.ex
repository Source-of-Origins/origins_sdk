defmodule OriginsSdk.Apps.CreateProgramTest do
  @moduledoc """
  Input + metadata types for `create_program_test`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_program_test`."

    @type t :: %__MODULE__{
          name: String.t(),
          program_id: String.t()
        }

    @enforce_keys [:name, :program_id]
    defstruct [:name, :program_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"name" => input.name, "program_id" => input.program_id}
    end
  end


end
