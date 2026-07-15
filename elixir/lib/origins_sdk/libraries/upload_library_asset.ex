defmodule OriginsSdk.Libraries.UploadLibraryAsset do
  @moduledoc """
  Input + metadata types for `upload_library_asset`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `upload_library_asset`."

    @type t :: %__MODULE__{
          file_data: String.t(),
          file_name: String.t(),
          file_size: integer(),
          file_type: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:file_data, :file_name, :file_size, :file_type, :origin_entity_id]
    defstruct [:file_data, :file_name, :file_size, :file_type, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"file_data" => input.file_data, "file_name" => input.file_name, "file_size" => input.file_size, "file_type" => input.file_type, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
