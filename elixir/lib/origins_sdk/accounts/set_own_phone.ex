defmodule OriginsSdk.Accounts.SetOwnPhone do
  @moduledoc """
  Input + metadata types for `set_own_phone`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `set_own_phone`."

    @type t :: %__MODULE__{
          phone: String.t() | nil
        }

    @enforce_keys []
    defstruct [:phone]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"phone" => input.phone}
    end
  end


end
