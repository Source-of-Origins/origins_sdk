defmodule OriginsSdk.Accounts.RequestPasswordResetToken do
  @moduledoc """
  Input + metadata types for `request_password_reset_token`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `request_password_reset_token`."

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
