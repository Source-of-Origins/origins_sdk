defmodule OriginsSdk.Libraries.ResolvedPlayback do
  @moduledoc """
  Mirror of `Origins.Libraries.VideoAsset.ResolvedPlayback` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    library_file_id: String.t() | nil,
    poster: String.t() | nil,
    src: String.t() | nil,
    status: String.t()
    }

  defstruct [
    :library_file_id,
    :poster,
    :src,
    :status
  ]

  @primitive_fields ~w(library_file_id poster src status)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      library_file_id: map["library_file_id"],
      poster: map["poster"],
      src: map["src"],
      status: map["status"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
