defmodule OriginsSdk.Podcasts.UpsertPodcastEpisodeSettings do
  @moduledoc """
  Input + metadata types for `upsert_podcast_episode_settings`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `upsert_podcast_episode_settings`."

    @type t :: %__MODULE__{
          ai_enabled: boolean(),
          character_id: String.t() | nil,
          order: integer(),
          podcast_config_id: String.t() | nil,
          visible: boolean(),
          youtube_episode_id: String.t()
        }

    @enforce_keys [:ai_enabled, :order, :visible, :youtube_episode_id]
    defstruct [:ai_enabled, :character_id, :order, :podcast_config_id, :visible, :youtube_episode_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"ai_enabled" => input.ai_enabled, "character_id" => input.character_id, "order" => input.order, "podcast_config_id" => input.podcast_config_id, "visible" => input.visible, "youtube_episode_id" => input.youtube_episode_id}
    end
  end


end
