defmodule OriginsSdk.Libraries.Library do
  @moduledoc """
  Mirror of `Origins.Libraries.Library` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    adapter_config: map() | nil,
    adapter_kind: any(),
    auto_ingest_videos: boolean(),
    auto_resync_enabled: boolean(),
    created_at: DateTime.t(),
    error_count: integer(),
    id: String.t(),
    inherits_to_descendants: boolean(),
    last_error: String.t() | nil,
    last_error_at: DateTime.t() | nil,
    last_synced_at: DateTime.t() | nil,
    name: String.t(),
    origin_entity_id: String.t(),
    slug: String.t(),
    status: any(),
    transcribe_media: boolean(),
    updated_at: DateTime.t()
    }

  defstruct [
    :adapter_config,
    :adapter_kind,
    :auto_ingest_videos,
    :auto_resync_enabled,
    :created_at,
    :error_count,
    :id,
    :inherits_to_descendants,
    :last_error,
    :last_error_at,
    :last_synced_at,
    :name,
    :origin_entity_id,
    :slug,
    :status,
    :transcribe_media,
    :updated_at
  ]

  @primitive_fields ~w(adapter_config adapter_kind auto_ingest_videos auto_resync_enabled created_at error_count id inherits_to_descendants last_error last_error_at last_synced_at name origin_entity_id slug status transcribe_media updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      adapter_config: map["adapter_config"],
      adapter_kind: map["adapter_kind"],
      auto_ingest_videos: map["auto_ingest_videos"],
      auto_resync_enabled: map["auto_resync_enabled"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      error_count: map["error_count"],
      id: map["id"],
      inherits_to_descendants: map["inherits_to_descendants"],
      last_error: map["last_error"],
      last_error_at: OriginsSdk.Internal.decode_datetime(map["last_error_at"]),
      last_synced_at: OriginsSdk.Internal.decode_datetime(map["last_synced_at"]),
      name: map["name"],
      origin_entity_id: map["origin_entity_id"],
      slug: map["slug"],
      status: map["status"],
      transcribe_media: map["transcribe_media"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
