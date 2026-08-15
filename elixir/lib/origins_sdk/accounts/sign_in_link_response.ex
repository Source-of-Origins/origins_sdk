defmodule OriginsSdk.Accounts.SignInLinkResponse do
  @moduledoc """
  Mirror of `Origins.Accounts.User.SignInLinkResponse` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    status: any()
    }

  defstruct [
    :status
  ]

  @primitive_fields ~w(status)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      status: map["status"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
