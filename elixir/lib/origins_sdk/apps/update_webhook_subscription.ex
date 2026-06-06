defmodule OriginsSdk.Apps.UpdateWebhookSubscription do
  @moduledoc """
  Input + metadata types for `update_webhook_subscription`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_webhook_subscription`."

    @type t :: %__MODULE__{
          active: boolean(),
          description: String.t() | nil,
          event_types: list(),
          target_url: String.t()
        }

    @enforce_keys [:active, :event_types, :target_url]
    defstruct [:active, :description, :event_types, :target_url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"active" => input.active, "description" => input.description, "event_types" => input.event_types, "target_url" => input.target_url}
    end
  end


end
