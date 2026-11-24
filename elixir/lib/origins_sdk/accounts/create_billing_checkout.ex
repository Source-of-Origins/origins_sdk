defmodule OriginsSdk.Accounts.CreateBillingCheckout do
  @moduledoc """
  Input + metadata types for `create_billing_checkout`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_billing_checkout`."

    @type t :: %__MODULE__{
          price_id: String.t(),
          return_path: String.t()
        }

    @enforce_keys [:price_id, :return_path]
    defstruct [:price_id, :return_path]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"price_id" => input.price_id, "return_path" => input.return_path}
    end
  end


end
