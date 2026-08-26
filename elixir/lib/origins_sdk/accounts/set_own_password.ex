defmodule OriginsSdk.Accounts.SetOwnPassword do
  @moduledoc """
  Input + metadata types for `set_own_password`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `set_own_password`."

    @type t :: %__MODULE__{
          password: String.t()
        }

    @enforce_keys [:password]
    defstruct [:password]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"password" => input.password}
    end
  end


end
