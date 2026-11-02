defmodule OriginsSdk.Libraries.ResolveVideoPlayback do
  @moduledoc """
  Input + metadata types for `resolve_video_playback`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `resolve_video_playback`."

    @type t :: %__MODULE__{
          library_file_id: String.t() | nil,
          origin_entity_id: String.t() | nil,
          path: String.t() | nil
        }

    @enforce_keys []
    defstruct [:library_file_id, :origin_entity_id, :path]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"library_file_id" => input.library_file_id, "origin_entity_id" => input.origin_entity_id, "path" => input.path}
    end
  end


end
