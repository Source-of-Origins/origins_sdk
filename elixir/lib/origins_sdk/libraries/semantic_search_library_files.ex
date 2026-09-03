defmodule OriginsSdk.Libraries.SemanticSearchLibraryFiles do
  @moduledoc """
  Input + metadata types for `semantic_search_library_files`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `semantic_search_library_files`."

    @type t :: %__MODULE__{
          limit: integer() | nil,
          origin_entity_id: String.t(),
          query: String.t()
        }

    @enforce_keys [:origin_entity_id, :query]
    defstruct [:limit, :origin_entity_id, :query]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"limit" => input.limit, "origin_entity_id" => input.origin_entity_id, "query" => input.query}
    end
  end


end
