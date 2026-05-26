defmodule OriginsSdk.Libraries.CreateLibraryFileInline do
  @moduledoc """
  Input + metadata types for `create_library_file_inline`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_library_file_inline`."

    @type t :: %__MODULE__{
          item_content: String.t() | nil,
          item_name: String.t(),
          item_type: String.t(),
          library_id: String.t(),
          path: String.t(),
          source_metadata: map() | nil
        }

    @enforce_keys [:item_name, :item_type, :library_id, :path]
    defstruct [:item_content, :item_name, :item_type, :library_id, :path, :source_metadata]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"item_content" => input.item_content, "item_name" => input.item_name, "item_type" => input.item_type, "library_id" => input.library_id, "path" => input.path, "source_metadata" => input.source_metadata}
    end
  end


end
