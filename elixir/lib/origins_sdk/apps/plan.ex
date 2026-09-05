defmodule OriginsSdk.Apps.Plan do
  @moduledoc """
  Mirror of `Origins.Apps.Plan` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    id: String.t(),
    name: String.t(),
    retired_at: DateTime.t() | nil,
    scope: any()
    }

  defstruct [
    :id,
    :name,
    :retired_at,
    :scope
  ]

  @primitive_fields ~w(id name retired_at scope)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      id: map["id"],
      name: map["name"],
      retired_at: OriginsSdk.Internal.decode_datetime(map["retired_at"]),
      scope: map["scope"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
