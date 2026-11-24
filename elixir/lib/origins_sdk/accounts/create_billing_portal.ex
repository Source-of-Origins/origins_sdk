defmodule OriginsSdk.Accounts.CreateBillingPortal do
  @moduledoc """
  Input + metadata types for `create_billing_portal`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_billing_portal`."

    @type t :: %__MODULE__{
          return_path: String.t()
        }

    @enforce_keys [:return_path]
    defstruct [:return_path]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"return_path" => input.return_path}
    end
  end


end
