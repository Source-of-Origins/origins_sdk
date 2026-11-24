defmodule OriginsSdk.Libraries.ReindexLibraryFile do
  @moduledoc """
  Input + metadata types for `reindex_library_file`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `reindex_library_file`."

    @type t :: %__MODULE__{
          id: String.t(),
          library_id: String.t()
        }

    @enforce_keys [:id, :library_id]
    defstruct [:id, :library_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id" => input.id, "library_id" => input.library_id}
    end
  end


end
