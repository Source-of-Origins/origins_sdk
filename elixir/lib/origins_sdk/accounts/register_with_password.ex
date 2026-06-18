defmodule OriginsSdk.Accounts.RegisterWithPassword do
  @moduledoc """
  Input + metadata types for `register_with_password`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `register_with_password`."

    @type t :: %__MODULE__{
          confirm_redirect_path: String.t() | nil,
          email: String.t(),
          password: String.t(),
          password_confirmation: String.t()
        }

    @enforce_keys [:email, :password, :password_confirmation]
    defstruct [:confirm_redirect_path, :email, :password, :password_confirmation]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"confirm_redirect_path" => input.confirm_redirect_path, "email" => input.email, "password" => input.password, "password_confirmation" => input.password_confirmation}
    end
  end

  defmodule Metadata do
    @moduledoc "Metadata returned alongside `register_with_password` on success."

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
