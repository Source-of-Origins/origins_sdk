defmodule OriginsSdk.Podcasts.GetPodcastEpisodeSettingsForPodcastConfig do
  @moduledoc """
  Input + metadata types for `get_podcast_episode_settings_for_podcast_config`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_podcast_episode_settings_for_podcast_config`."

    @type t :: %__MODULE__{
          podcast_config_id: String.t()
        }

    @enforce_keys [:podcast_config_id]
    defstruct [:podcast_config_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"podcast_config_id" => input.podcast_config_id}
    end
  end


end
