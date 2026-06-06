defmodule OriginsSdk.Accounts.SignInWithAppleToken do
  @moduledoc """
  Input + metadata types for `sign_in_with_apple_token`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `sign_in_with_apple_token`."

    @type t :: %__MODULE__{
          id_token: String.t()
        }

    @enforce_keys [:id_token]
    defstruct [:id_token]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id_token" => input.id_token}
    end
  end


end
