defmodule OriginsSdk.Accounts.ResetPasswordWithToken do
  @moduledoc """
  Input + metadata types for `reset_password_with_token`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `reset_password_with_token`."

    @type t :: %__MODULE__{
          password: String.t(),
          password_confirmation: String.t(),
          reset_token: String.t()
        }

    @enforce_keys [:password, :password_confirmation, :reset_token]
    defstruct [:password, :password_confirmation, :reset_token]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"password" => input.password, "password_confirmation" => input.password_confirmation, "reset_token" => input.reset_token}
    end
  end


end
