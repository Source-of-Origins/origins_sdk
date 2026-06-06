defmodule OriginsSdk.Apps.WebhookSubscription do
  @moduledoc """
  Mirror of `Origins.Apps.WebhookSubscription` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    active: boolean(),
    app_id: String.t() | nil,
    created_at: DateTime.t(),
    description: String.t() | nil,
    event_types: list(),
    id: String.t(),
    origin_entity_id: String.t(),
    secret: String.t(),
    target_url: String.t(),
    updated_at: DateTime.t()
    }

  defstruct [
    :active,
    :app_id,
    :created_at,
    :description,
    :event_types,
    :id,
    :origin_entity_id,
    :secret,
    :target_url,
    :updated_at
  ]

  @primitive_fields ~w(active app_id created_at description event_types id origin_entity_id secret target_url updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      active: map["active"],
      app_id: map["app_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      description: map["description"],
      event_types: map["event_types"],
      id: map["id"],
      origin_entity_id: map["origin_entity_id"],
      secret: map["secret"],
      target_url: map["target_url"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
