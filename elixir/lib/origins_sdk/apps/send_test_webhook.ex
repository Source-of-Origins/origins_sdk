defmodule OriginsSdk.Apps.SendTestWebhook do
  @moduledoc """
  Input + metadata types for `send_test_webhook`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `send_test_webhook`."

    @type t :: %__MODULE__{
          id: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:id, :origin_entity_id]
    defstruct [:id, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id" => input.id, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
