defmodule OriginsSdk.Letta.Block do
  @moduledoc """
  Mirror of `Origins.Letta.Block` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    id: String.t(),
    label: String.t(),
    value: String.t() | nil
    }

  defstruct [
    :id,
    :label,
    :value
  ]

  @primitive_fields ~w(id label value)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      id: map["id"],
      label: map["label"],
      value: map["value"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
