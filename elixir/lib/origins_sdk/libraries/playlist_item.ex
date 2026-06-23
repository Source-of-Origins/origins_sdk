defmodule OriginsSdk.Libraries.PlaylistItem do
  @moduledoc """
  Mirror of `Origins.Libraries.PlaylistItem` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    id: String.t(),
    library_file_id: String.t(),
    playlist_id: String.t(),
    position: integer(),
    updated_at: DateTime.t()
    }

  defstruct [
    :created_at,
    :id,
    :library_file_id,
    :playlist_id,
    :position,
    :updated_at
  ]

  @primitive_fields ~w(created_at id library_file_id playlist_id position updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      library_file_id: map["library_file_id"],
      playlist_id: map["playlist_id"],
      position: map["position"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
