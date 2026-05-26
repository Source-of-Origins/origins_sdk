defmodule OriginsSdk.Libraries.ListLibraryFilesForLibrary do
  @moduledoc """
  Input + metadata types for `list_library_files_for_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_library_files_for_library`."

    @type t :: %__MODULE__{
          library_id: String.t()
        }

    @enforce_keys [:library_id]
    defstruct [:library_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"library_id" => input.library_id}
    end
  end


end
