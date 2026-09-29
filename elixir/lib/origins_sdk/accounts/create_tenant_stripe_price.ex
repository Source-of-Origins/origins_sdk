defmodule OriginsSdk.Accounts.CreateTenantStripePrice do
  @moduledoc """
  Input + metadata types for `create_tenant_stripe_price`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_tenant_stripe_price`."

    @type t :: %__MODULE__{
          currency: String.t(),
          interval: any() | nil,
          product_name: String.t(),
          unit_amount: integer()
        }

    @enforce_keys [:currency, :product_name, :unit_amount]
    defstruct [:currency, :interval, :product_name, :unit_amount]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"currency" => input.currency, "interval" => input.interval, "product_name" => input.product_name, "unit_amount" => input.unit_amount}
    end
  end


end
