defmodule OriginsSdk.Libraries.StaticRendition do
  @moduledoc """
  Mirror of `Origins.Libraries.VideoAsset.StaticRendition` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    name: String.t(),
    url: String.t()
    }

  defstruct [
    :name,
    :url
  ]

  @primitive_fields ~w(name url)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      name: map["name"],
      url: map["url"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
