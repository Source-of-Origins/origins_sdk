defmodule OriginsSdk.Apps.Block do
  @moduledoc """
  Mirror of `Origins.Apps.Document.Block` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    block_type: String.t(),
    created_at: DateTime.t(),
    document_id: String.t(),
    library_file_id: String.t() | nil,
    parent_record_id: String.t() | nil,
    payload: map(),
    position: integer(),
    record_id: String.t(),
    target_app_id: String.t() | nil,
    target_origin_entity_id: String.t() | nil,
    target_record_id: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :block_type,
    :created_at,
    :document_id,
    :library_file_id,
    :parent_record_id,
    :payload,
    :position,
    :record_id,
    :target_app_id,
    :target_origin_entity_id,
    :target_record_id,
    :updated_at
  ]

  @primitive_fields ~w(block_type created_at document_id library_file_id parent_record_id payload position record_id target_app_id target_origin_entity_id target_record_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:block_type, :created_at, :document_id, :library_file_id, :parent_record_id, :payload, :position, :record_id, :target_app_id, :target_origin_entity_id, :target_record_id, :updated_at]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      block_type: map["block_type"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      document_id: map["document_id"],
      library_file_id: map["library_file_id"],
      parent_record_id: map["parent_record_id"],
      payload: map["payload"],
      position: map["position"],
      record_id: map["record_id"],
      target_app_id: map["target_app_id"],
      target_origin_entity_id: map["target_origin_entity_id"],
      target_record_id: map["target_record_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
