defmodule OriginsSdk.Accounts.ListMyTenantGrants do
  @moduledoc """
  Input + metadata types for `list_my_tenant_grants`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_my_tenant_grants`."

    @type t :: %__MODULE__{

        }

    @enforce_keys []
    defstruct []

    @doc false
    def to_json(%__MODULE__{} = _input) do
      %{}
    end
  end


end
