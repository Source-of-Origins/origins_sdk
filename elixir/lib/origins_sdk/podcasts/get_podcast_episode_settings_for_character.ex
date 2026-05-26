defmodule OriginsSdk.Podcasts.GetPodcastEpisodeSettingsForCharacter do
  @moduledoc """
  Input + metadata types for `get_podcast_episode_settings_for_character`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_podcast_episode_settings_for_character`."

    @type t :: %__MODULE__{
          character_id: String.t()
        }

    @enforce_keys [:character_id]
    defstruct [:character_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"character_id" => input.character_id}
    end
  end


end
