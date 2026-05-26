defmodule OriginsSdk.Accounts.RegisterWithInvitation do
  @moduledoc """
  Input + metadata types for `register_with_invitation`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `register_with_invitation`."

    @type t :: %__MODULE__{
          invitation_token: String.t(),
          password: String.t(),
          password_confirmation: String.t()
        }

    @enforce_keys [:invitation_token, :password, :password_confirmation]
    defstruct [:invitation_token, :password, :password_confirmation]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"invitation_token" => input.invitation_token, "password" => input.password, "password_confirmation" => input.password_confirmation}
    end
  end

  defmodule Metadata do
    @moduledoc "Metadata returned alongside `register_with_invitation` on success."

    @type t :: %__MODULE__{
            token: String.t()
        }

    defstruct [:token]

    @doc "All metadata field atoms."
    def fields, do: ~w(token)a

    @doc false
    @spec from_json(map() | nil) :: t() | nil
    def from_json(nil), do: nil
    def from_json(map) when is_map(map) do
      %__MODULE__{
          token: map["token"]
      }
    end
  end

end
