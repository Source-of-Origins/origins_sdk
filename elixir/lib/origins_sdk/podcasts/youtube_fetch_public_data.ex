defmodule OriginsSdk.Podcasts.YoutubeFetchPublicData do
  @moduledoc """
  Input + metadata types for `youtube_fetch_public_data`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `youtube_fetch_public_data`."

    @type t :: %__MODULE__{
          fetch_all_videos: boolean() | nil,
          origin_entity_id: String.t() | nil,
          youtube_url: String.t()
        }

    @enforce_keys [:youtube_url]
    defstruct [:fetch_all_videos, :origin_entity_id, :youtube_url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"fetch_all_videos" => input.fetch_all_videos, "origin_entity_id" => input.origin_entity_id, "youtube_url" => input.youtube_url}
    end
  end


end
