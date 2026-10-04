defmodule OriginsSdk.Apps.Plan do
  @moduledoc """
  Mirror of `Origins.Apps.Plan` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    id: String.t(),
    name: String.t(),
    retired_at: DateTime.t() | nil,
    sale_count: integer(),
    scope: any(),
    stripe_price_id: String.t()
    }

  defstruct [
    :id,
    :name,
    :retired_at,
    :sale_count,
    :scope,
    :stripe_price_id
  ]

  @primitive_fields ~w(id name retired_at sale_count scope stripe_price_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:id, :name, :retired_at, :sale_count, :scope, :stripe_price_id]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      id: map["id"],
      name: map["name"],
      retired_at: OriginsSdk.Internal.decode_datetime(map["retired_at"]),
      sale_count: map["sale_count"],
      scope: map["scope"],
      stripe_price_id: map["stripe_price_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
