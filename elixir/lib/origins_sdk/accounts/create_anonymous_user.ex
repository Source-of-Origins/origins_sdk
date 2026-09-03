defmodule OriginsSdk.Accounts.CreateAnonymousUser do
  @moduledoc """
  Input + metadata types for `create_anonymous_user`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_anonymous_user`."

    @type t :: %__MODULE__{
          display_name: String.t() | nil,
          email: String.t()
        }

    @enforce_keys [:email]
    defstruct [:display_name, :email]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"display_name" => input.display_name, "email" => input.email}
    end
  end

  defmodule Metadata do
    @moduledoc "Metadata returned alongside `create_anonymous_user` on success."

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
