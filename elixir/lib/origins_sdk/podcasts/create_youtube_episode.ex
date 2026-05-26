defmodule OriginsSdk.Podcasts.CreateYoutubeEpisode do
  @moduledoc """
  Input + metadata types for `create_youtube_episode`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_youtube_episode`."

    @type t :: %__MODULE__{
          conversation_starters: list() | nil,
          description: String.t() | nil,
          duration: String.t() | nil,
          episode_number: integer() | nil,
          guest_ids: list() | nil,
          guest_names: list() | nil,
          host_ids: list() | nil,
          origin_entity_id: String.t(),
          playlist_id: String.t() | nil,
          public_profile_config: map() | nil,
          publish_date: DateTime.t() | nil,
          thumbnail_url: String.t() | nil,
          title: String.t(),
          transcript_id: String.t() | nil,
          used_in_podcast: boolean() | nil,
          used_in_public_profile: boolean() | nil,
          video_id: String.t(),
          video_url: String.t()
        }

    @enforce_keys [:origin_entity_id, :title, :video_id, :video_url]
    defstruct [:conversation_starters, :description, :duration, :episode_number, :guest_ids, :guest_names, :host_ids, :origin_entity_id, :playlist_id, :public_profile_config, :publish_date, :thumbnail_url, :title, :transcript_id, :used_in_podcast, :used_in_public_profile, :video_id, :video_url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"conversation_starters" => input.conversation_starters, "description" => input.description, "duration" => input.duration, "episode_number" => input.episode_number, "guest_ids" => input.guest_ids, "guest_names" => input.guest_names, "host_ids" => input.host_ids, "origin_entity_id" => input.origin_entity_id, "playlist_id" => input.playlist_id, "public_profile_config" => input.public_profile_config, "publish_date" => input.publish_date, "thumbnail_url" => input.thumbnail_url, "title" => input.title, "transcript_id" => input.transcript_id, "used_in_podcast" => input.used_in_podcast, "used_in_public_profile" => input.used_in_public_profile, "video_id" => input.video_id, "video_url" => input.video_url}
    end
  end


end
