defmodule OriginsSdk.Accounts.ListMyTenants do
  @moduledoc """
  Input + metadata types for `list_my_tenants`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_my_tenants`."

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
