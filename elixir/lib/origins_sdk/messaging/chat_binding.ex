defmodule OriginsSdk.Messaging.ChatBinding do
  @moduledoc """
  Mirror of `Origins.Messaging.ChatBinding` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    bound_at: DateTime.t() | nil,
    chat_guid: String.t() | nil,
    created_at: DateTime.t(),
    id: String.t(),
    notes: String.t() | nil,
    origin_entity_id: String.t(),
    prospect_labels: map(),
    updated_at: DateTime.t()
    }

  defstruct [
    :bound_at,
    :chat_guid,
    :created_at,
    :id,
    :notes,
    :origin_entity_id,
    :prospect_labels,
    :updated_at
  ]

  @primitive_fields ~w(bound_at chat_guid created_at id notes origin_entity_id prospect_labels updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      bound_at: OriginsSdk.Internal.decode_datetime(map["bound_at"]),
      chat_guid: map["chat_guid"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      notes: map["notes"],
      origin_entity_id: map["origin_entity_id"],
      prospect_labels: map["prospect_labels"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
