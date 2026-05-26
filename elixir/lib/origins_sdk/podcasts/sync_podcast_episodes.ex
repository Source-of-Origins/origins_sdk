defmodule OriginsSdk.Podcasts.SyncPodcastEpisodes do
  @moduledoc """
  Input + metadata types for `sync_podcast_episodes`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `sync_podcast_episodes`."

    @type t :: %__MODULE__{
          entity_profile_id: String.t(),
          playlist_id: String.t()
        }

    @enforce_keys [:entity_profile_id, :playlist_id]
    defstruct [:entity_profile_id, :playlist_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"entity_profile_id" => input.entity_profile_id, "playlist_id" => input.playlist_id}
    end
  end


end
