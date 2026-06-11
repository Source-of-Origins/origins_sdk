defmodule OriginsSdk.Libraries.VideoAsset do
  @moduledoc """
  Mirror of `Origins.Libraries.VideoAsset` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    aspect_ratio: String.t() | nil,
    captioned_at: DateTime.t() | nil,
    created_at: DateTime.t(),
    duration: float() | nil,
    error: String.t() | nil,
    id: String.t(),
    library_file_id: String.t(),
    otterwake_asset_id: String.t() | nil,
    otterwake_org: String.t(),
    otterwake_playback_id: String.t() | nil,
    otterwake_upload_id: String.t() | nil,
    status: any(),
    updated_at: DateTime.t()
    }

  defstruct [
    :aspect_ratio,
    :captioned_at,
    :created_at,
    :duration,
    :error,
    :id,
    :library_file_id,
    :otterwake_asset_id,
    :otterwake_org,
    :otterwake_playback_id,
    :otterwake_upload_id,
    :status,
    :updated_at
  ]

  @primitive_fields ~w(aspect_ratio captioned_at created_at duration error id library_file_id otterwake_asset_id otterwake_org otterwake_playback_id otterwake_upload_id status updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      aspect_ratio: map["aspect_ratio"],
      captioned_at: OriginsSdk.Internal.decode_datetime(map["captioned_at"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      duration: map["duration"],
      error: map["error"],
      id: map["id"],
      library_file_id: map["library_file_id"],
      otterwake_asset_id: map["otterwake_asset_id"],
      otterwake_org: map["otterwake_org"],
      otterwake_playback_id: map["otterwake_playback_id"],
      otterwake_upload_id: map["otterwake_upload_id"],
      status: map["status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
