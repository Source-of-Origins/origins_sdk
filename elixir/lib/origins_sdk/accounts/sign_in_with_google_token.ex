defmodule OriginsSdk.Accounts.SignInWithGoogleToken do
  @moduledoc """
  Input + metadata types for `sign_in_with_google_token`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `sign_in_with_google_token`."

    @type t :: %__MODULE__{
          create_if_missing: boolean(),
          id_token: String.t()
        }

    @enforce_keys [:create_if_missing, :id_token]
    defstruct [:create_if_missing, :id_token]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"create_if_missing" => input.create_if_missing, "id_token" => input.id_token}
    end
  end


end
