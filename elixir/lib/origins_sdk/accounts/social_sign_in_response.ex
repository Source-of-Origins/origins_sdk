defmodule OriginsSdk.Accounts.SocialSignInResponse do
  @moduledoc """
  Mirror of `Origins.Accounts.User.SocialSignInResponse` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    email: String.t(),
    id: String.t(),
    token: String.t()
    }

  defstruct [
    :email,
    :id,
    :token
  ]

  @primitive_fields ~w(email id token)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:email, :id, :token]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      email: map["email"],
      id: map["id"],
      token: map["token"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
