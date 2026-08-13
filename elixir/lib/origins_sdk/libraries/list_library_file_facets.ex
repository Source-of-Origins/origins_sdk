defmodule OriginsSdk.Libraries.ListLibraryFileFacets do
  @moduledoc """
  Input + metadata types for `list_library_file_facets`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_library_file_facets`."

    @type t :: %__MODULE__{
          item_types: list() | nil,
          keys: list(),
          library_ids: list() | nil
        }

    @enforce_keys [:keys]
    defstruct [:item_types, :keys, :library_ids]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"item_types" => input.item_types, "keys" => input.keys, "library_ids" => input.library_ids}
    end
  end


end
