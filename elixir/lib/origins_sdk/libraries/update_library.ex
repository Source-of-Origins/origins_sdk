defmodule OriginsSdk.Libraries.UpdateLibrary do
  @moduledoc """
  Input + metadata types for `update_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_library`."

    @type t :: %__MODULE__{
          auto_ingest_videos: boolean(),
          auto_resync_enabled: boolean(),
          inherits_to_descendants: boolean(),
          name: String.t(),
          transcribe_media: boolean()
        }

    @enforce_keys [:auto_ingest_videos, :auto_resync_enabled, :inherits_to_descendants, :name, :transcribe_media]
    defstruct [:auto_ingest_videos, :auto_resync_enabled, :inherits_to_descendants, :name, :transcribe_media]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"auto_ingest_videos" => input.auto_ingest_videos, "auto_resync_enabled" => input.auto_resync_enabled, "inherits_to_descendants" => input.inherits_to_descendants, "name" => input.name, "transcribe_media" => input.transcribe_media}
    end
  end


end
