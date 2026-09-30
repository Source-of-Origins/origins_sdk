defmodule OriginsSdk.Apps.GetProgramTest do
  @moduledoc """
  Input + metadata types for `get_program_test`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_program_test`."

    @type t :: %__MODULE__{
          id: String.t()
        }

    @enforce_keys [:id]
    defstruct [:id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id" => input.id}
    end
  end


end
