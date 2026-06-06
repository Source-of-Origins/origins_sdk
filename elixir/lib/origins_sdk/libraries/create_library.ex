defmodule OriginsSdk.Libraries.CreateLibrary do
  @moduledoc """
  Input + metadata types for `create_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_library`."

    @type t :: %__MODULE__{
          adapter_config: map() | nil,
          adapter_kind: any(),
          auto_ingest_videos: boolean(),
          auto_resync_enabled: boolean(),
          inherits_to_descendants: boolean(),
          name: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:adapter_kind, :auto_ingest_videos, :auto_resync_enabled, :inherits_to_descendants, :name, :origin_entity_id]
    defstruct [:adapter_config, :adapter_kind, :auto_ingest_videos, :auto_resync_enabled, :inherits_to_descendants, :name, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"adapter_config" => input.adapter_config, "adapter_kind" => input.adapter_kind, "auto_ingest_videos" => input.auto_ingest_videos, "auto_resync_enabled" => input.auto_resync_enabled, "inherits_to_descendants" => input.inherits_to_descendants, "name" => input.name, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
