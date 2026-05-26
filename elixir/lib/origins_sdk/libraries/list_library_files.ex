defmodule OriginsSdk.Libraries.ListLibraryFiles do
  @moduledoc """
  Input + metadata types for `list_library_files`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_library_files`."

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
