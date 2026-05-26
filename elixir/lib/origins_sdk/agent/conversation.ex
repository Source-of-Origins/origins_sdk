defmodule OriginsSdk.Agent.Conversation do
  @moduledoc """
  Mirror of `Origins.Agent.Conversation` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    channel: String.t() | nil,
    closed_at: DateTime.t() | nil,
    created_at: DateTime.t(),
    id: String.t(),
    is_root: boolean() | nil,
    last_message_at: DateTime.t(),
    metadata: map() | nil,
    origin_entity_id: String.t(),
    phone_number: String.t() | nil,
    root_conversation_id: String.t() | nil,
    session_id: String.t() | nil,
    sms_opt_in: boolean() | nil,
    started_at: DateTime.t(),
    status: String.t() | nil,
    updated_at: DateTime.t(),
    user_email: String.t() | nil,
    user_id: String.t() | nil,
    user_name: String.t() | nil
    }

  defstruct [
    :channel,
    :closed_at,
    :created_at,
    :id,
    :is_root,
    :last_message_at,
    :metadata,
    :origin_entity_id,
    :phone_number,
    :root_conversation_id,
    :session_id,
    :sms_opt_in,
    :started_at,
    :status,
    :updated_at,
    :user_email,
    :user_id,
    :user_name
  ]

  @primitive_fields ~w(channel closed_at created_at id is_root last_message_at metadata origin_entity_id phone_number root_conversation_id session_id sms_opt_in started_at status updated_at user_email user_id user_name)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      channel: map["channel"],
      closed_at: OriginsSdk.Internal.decode_datetime(map["closed_at"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      is_root: map["is_root"],
      last_message_at: OriginsSdk.Internal.decode_datetime(map["last_message_at"]),
      metadata: map["metadata"],
      origin_entity_id: map["origin_entity_id"],
      phone_number: map["phone_number"],
      root_conversation_id: map["root_conversation_id"],
      session_id: map["session_id"],
      sms_opt_in: map["sms_opt_in"],
      started_at: OriginsSdk.Internal.decode_datetime(map["started_at"]),
      status: map["status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_email: map["user_email"],
      user_id: map["user_id"],
      user_name: map["user_name"]
    }
  end
end
