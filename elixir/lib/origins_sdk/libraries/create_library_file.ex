defmodule OriginsSdk.Libraries.CreateLibraryFile do
  @moduledoc """
  Input + metadata types for `create_library_file`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_library_file`."

    @type t :: %__MODULE__{
          item_content: String.t() | nil,
          item_name: String.t(),
          item_type: String.t(),
          letta_file_id: String.t() | nil,
          library_id: String.t(),
          path: String.t(),
          s3_key: String.t() | nil,
          source_metadata: map() | nil,
          sync_status: any() | nil
        }

    @enforce_keys [:item_name, :item_type, :library_id, :path]
    defstruct [:item_content, :item_name, :item_type, :letta_file_id, :library_id, :path, :s3_key, :source_metadata, :sync_status]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"item_content" => input.item_content, "item_name" => input.item_name, "item_type" => input.item_type, "letta_file_id" => input.letta_file_id, "library_id" => input.library_id, "path" => input.path, "s3_key" => input.s3_key, "source_metadata" => input.source_metadata, "sync_status" => input.sync_status}
    end
  end


end
