defmodule OriginsSdk.Libraries.Reorder do
  @moduledoc """
  Input + metadata types for `reorder`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `reorder`."

    @type t :: %__MODULE__{
          position: integer()
        }

    @enforce_keys [:position]
    defstruct [:position]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"position" => input.position}
    end
  end


end
