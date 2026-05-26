defmodule OriginsSdk.Libraries.GetLibrary do
  @moduledoc """
  Input + metadata types for `get_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_library`."

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
