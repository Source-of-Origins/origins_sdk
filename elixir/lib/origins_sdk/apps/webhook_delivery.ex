defmodule OriginsSdk.Apps.WebhookDelivery do
  @moduledoc """
  Mirror of `Origins.Apps.WebhookDelivery` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    assessment_response_id: String.t() | nil,
    attempts: integer(),
    created_at: DateTime.t(),
    delivered_at: DateTime.t() | nil,
    event_id: String.t(),
    event_type: String.t(),
    id: String.t(),
    last_error: String.t() | nil,
    last_status_code: integer() | nil,
    origin_entity_id: String.t(),
    payload: map(),
    status: any(),
    subscription_id: String.t(),
    target_url: String.t(),
    updated_at: DateTime.t()
    }

  defstruct [
    :assessment_response_id,
    :attempts,
    :created_at,
    :delivered_at,
    :event_id,
    :event_type,
    :id,
    :last_error,
    :last_status_code,
    :origin_entity_id,
    :payload,
    :status,
    :subscription_id,
    :target_url,
    :updated_at
  ]

  @primitive_fields ~w(assessment_response_id attempts created_at delivered_at event_id event_type id last_error last_status_code origin_entity_id payload status subscription_id target_url updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      assessment_response_id: map["assessment_response_id"],
      attempts: map["attempts"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      delivered_at: OriginsSdk.Internal.decode_datetime(map["delivered_at"]),
      event_id: map["event_id"],
      event_type: map["event_type"],
      id: map["id"],
      last_error: map["last_error"],
      last_status_code: map["last_status_code"],
      origin_entity_id: map["origin_entity_id"],
      payload: map["payload"],
      status: map["status"],
      subscription_id: map["subscription_id"],
      target_url: map["target_url"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
