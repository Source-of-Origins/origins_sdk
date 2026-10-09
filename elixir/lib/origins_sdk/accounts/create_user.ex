defmodule OriginsSdk.Accounts.CreateUser do
  @moduledoc """
  Input + metadata types for `create_user`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_user`."

    @type t :: %__MODULE__{
          email: String.t()
        }

    @enforce_keys [:email]
    defstruct [:email]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"email" => input.email}
    end
  end


end
