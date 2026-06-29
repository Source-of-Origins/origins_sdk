defmodule OriginsSdk.Accounts.ConfirmAnonymousAccount do
  @moduledoc """
  Input + metadata types for `confirm_anonymous_account`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `confirm_anonymous_account`."

    @type t :: %__MODULE__{
          claim_token: String.t(),
          email: String.t(),
          password: String.t(),
          password_confirmation: String.t()
        }

    @enforce_keys [:claim_token, :email, :password, :password_confirmation]
    defstruct [:claim_token, :email, :password, :password_confirmation]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"claim_token" => input.claim_token, "email" => input.email, "password" => input.password, "password_confirmation" => input.password_confirmation}
    end
  end


end
