defmodule OriginsSdk.Apps.CreateWebhookSubscription do
  @moduledoc """
  Input + metadata types for `create_webhook_subscription`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_webhook_subscription`."

    @type t :: %__MODULE__{
          active: boolean(),
          app_id: String.t() | nil,
          description: String.t() | nil,
          event_types: list(),
          origin_entity_id: String.t(),
          target_url: String.t()
        }

    @enforce_keys [:active, :event_types, :origin_entity_id, :target_url]
    defstruct [:active, :app_id, :description, :event_types, :origin_entity_id, :target_url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"active" => input.active, "app_id" => input.app_id, "description" => input.description, "event_types" => input.event_types, "origin_entity_id" => input.origin_entity_id, "target_url" => input.target_url}
    end
  end


end
