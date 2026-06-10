defmodule OriginsSdk.Libraries.LibraryFile do
  @moduledoc """
  Mirror of `Origins.Libraries.LibraryFile` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    id: String.t(),
    item_content: String.t() | nil,
    item_name: String.t(),
    item_type: String.t(),
    library_id: String.t(),
    path: String.t(),
    s3_key: String.t() | nil,
    source_metadata: map() | nil,
    sync_status: any() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :created_at,
    :id,
    :item_content,
    :item_name,
    :item_type,
    :library_id,
    :path,
    :s3_key,
    :source_metadata,
    :sync_status,
    :updated_at
  ]

  @primitive_fields ~w(created_at id item_content item_name item_type library_id path s3_key source_metadata sync_status updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      item_content: map["item_content"],
      item_name: map["item_name"],
      item_type: map["item_type"],
      library_id: map["library_id"],
      path: map["path"],
      s3_key: map["s3_key"],
      source_metadata: map["source_metadata"],
      sync_status: map["sync_status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
