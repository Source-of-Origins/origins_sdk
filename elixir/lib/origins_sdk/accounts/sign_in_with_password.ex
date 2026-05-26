defmodule OriginsSdk.Accounts.SignInWithPassword do
  @moduledoc """
  Input + metadata types for `sign_in_with_password`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `sign_in_with_password`."

    @type t :: %__MODULE__{
          email: String.t(),
          password: String.t()
        }

    @enforce_keys [:email, :password]
    defstruct [:email, :password]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"email" => input.email, "password" => input.password}
    end
  end

  defmodule Metadata do
    @moduledoc "Metadata returned alongside `sign_in_with_password` on success."

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
