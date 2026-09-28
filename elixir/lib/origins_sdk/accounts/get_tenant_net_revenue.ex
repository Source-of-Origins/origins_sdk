defmodule OriginsSdk.Accounts.GetTenantNetRevenue do
  @moduledoc """
  Input + metadata types for `get_tenant_net_revenue`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_tenant_net_revenue`."

    @type t :: %__MODULE__{
          days: integer()
        }

    @enforce_keys [:days]
    defstruct [:days]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"days" => input.days}
    end
  end


end
