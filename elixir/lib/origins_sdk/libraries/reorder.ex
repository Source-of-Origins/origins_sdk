defmodule OriginsSdk.Libraries.Reorder do
  @moduledoc """
  Input + metadata types for `reorder`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `reorder`."

    @type t :: %__MODULE__{
          id: String.t(),
          index: integer()
        }

    @enforce_keys [:id, :index]
    defstruct [:id, :index]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id" => input.id, "index" => input.index}
    end
  end


end
