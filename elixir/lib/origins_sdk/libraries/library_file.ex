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
    media_format: String.t() | nil,
    path: String.t(),
    s3_key: String.t() | nil,
    signed_s3_url: String.t() | nil,
    source_metadata: map() | nil,
    sync_status: any() | nil,
    updated_at: DateTime.t(),
    vfs_path: String.t() | nil
    }

  defstruct [
    :created_at,
    :id,
    :item_content,
    :item_name,
    :item_type,
    :library_id,
    :media_format,
    :path,
    :s3_key,
    :signed_s3_url,
    :source_metadata,
    :sync_status,
    :updated_at,
    :vfs_path
  ]

  @primitive_fields ~w(created_at id item_content item_name item_type library_id media_format path s3_key signed_s3_url source_metadata sync_status updated_at vfs_path)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:created_at, :id, :item_content, :item_name, :item_type, :library_id, :media_format, :path, :s3_key, :signed_s3_url, :source_metadata, :sync_status, :updated_at, :vfs_path]

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
      media_format: map["media_format"],
      path: map["path"],
      s3_key: map["s3_key"],
      signed_s3_url: map["signed_s3_url"],
      source_metadata: map["source_metadata"],
      sync_status: map["sync_status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      vfs_path: map["vfs_path"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
