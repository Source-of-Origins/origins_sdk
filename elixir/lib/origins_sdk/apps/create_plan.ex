defmodule OriginsSdk.Apps.CreatePlan do
  @moduledoc """
  Input + metadata types for `create_plan`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_plan`."

    @type t :: %__MODULE__{
          app_ids: list() | nil,
          name: String.t(),
          scope: any(),
          stripe_price_id: String.t()
        }

    @enforce_keys [:name, :scope, :stripe_price_id]
    defstruct [:app_ids, :name, :scope, :stripe_price_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_ids" => input.app_ids, "name" => input.name, "scope" => input.scope, "stripe_price_id" => input.stripe_price_id}
    end
  end


end
