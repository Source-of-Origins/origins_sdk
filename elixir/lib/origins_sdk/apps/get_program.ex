defmodule OriginsSdk.Apps.GetProgram do
  @moduledoc """
  Input + metadata types for `get_program`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_program`."

    @type t :: %__MODULE__{
          email: String.t() | nil,
          program_id: String.t()
        }

    @enforce_keys [:program_id]
    defstruct [:email, :program_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"email" => input.email, "program_id" => input.program_id}
    end
  end


end
