defmodule OriginsSdk.Agent.MessageAttachment do
  @moduledoc """
  Mirror of `Origins.Agent.MessageAttachment` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    file_name: String.t(),
    file_size: integer(),
    file_type: String.t(),
    id: String.t(),
    message_id: String.t() | nil,
    parsed_content: String.t() | nil,
    pending_message_id: String.t() | nil,
    storage_path: String.t()
    }

  defstruct [
    :created_at,
    :file_name,
    :file_size,
    :file_type,
    :id,
    :message_id,
    :parsed_content,
    :pending_message_id,
    :storage_path
  ]

  @primitive_fields ~w(created_at file_name file_size file_type id message_id parsed_content pending_message_id storage_path)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      file_name: map["file_name"],
      file_size: map["file_size"],
      file_type: map["file_type"],
      id: map["id"],
      message_id: map["message_id"],
      parsed_content: map["parsed_content"],
      pending_message_id: map["pending_message_id"],
      storage_path: map["storage_path"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
