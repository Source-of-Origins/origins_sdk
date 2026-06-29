defmodule OriginsSdk.Libraries.CreateLibrary do
  @moduledoc """
  Input + metadata types for `create_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_library`."

    @type t :: %__MODULE__{
          adapter_config: map() | nil,
          adapter_kind: any(),
          adapter_secret: map() | nil,
          auto_ingest_videos: boolean(),
          auto_resync_enabled: boolean(),
          inherits_to_descendants: boolean(),
          name: String.t(),
          origin_entity_id: String.t(),
          transcribe_media: boolean()
        }

    @enforce_keys [:adapter_kind, :auto_ingest_videos, :auto_resync_enabled, :inherits_to_descendants, :name, :origin_entity_id, :transcribe_media]
    defstruct [:adapter_config, :adapter_kind, :adapter_secret, :auto_ingest_videos, :auto_resync_enabled, :inherits_to_descendants, :name, :origin_entity_id, :transcribe_media]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"adapter_config" => input.adapter_config, "adapter_kind" => input.adapter_kind, "adapter_secret" => input.adapter_secret, "auto_ingest_videos" => input.auto_ingest_videos, "auto_resync_enabled" => input.auto_resync_enabled, "inherits_to_descendants" => input.inherits_to_descendants, "name" => input.name, "origin_entity_id" => input.origin_entity_id, "transcribe_media" => input.transcribe_media}
    end
  end


end
