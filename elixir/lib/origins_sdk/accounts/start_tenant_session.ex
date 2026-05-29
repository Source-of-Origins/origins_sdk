defmodule OriginsSdk.Accounts.StartTenantSession do
  @moduledoc """
  Input + metadata types for `start_tenant_session`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `start_tenant_session`."

    @type t :: %__MODULE__{
          tenant_id: String.t()
        }

    @enforce_keys [:tenant_id]
    defstruct [:tenant_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"tenant_id" => input.tenant_id}
    end
  end


end
