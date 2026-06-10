defmodule OriginsSdk.Podcasts.YoutubeEpisode do
  @moduledoc """
  Mirror of `Origins.Podcasts.YoutubeEpisode` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    conversation_starters: list() | nil,
    created_at: DateTime.t(),
    description: String.t() | nil,
    duration: String.t() | nil,
    episode_number: integer() | nil,
    guest_ids: list() | nil,
    guest_names: list() | nil,
    host_ids: list() | nil,
    id: String.t(),
    origin_entity_id: String.t(),
    playlist_id: String.t() | nil,
    public_profile_config: map() | nil,
    publish_date: DateTime.t() | nil,
    thumbnail_url: String.t() | nil,
    title: String.t(),
    transcript_id: String.t() | nil,
    updated_at: DateTime.t(),
    used_in_podcast: boolean() | nil,
    used_in_public_profile: boolean() | nil,
    video_id: String.t(),
    video_url: String.t()
    }

  defstruct [
    :conversation_starters,
    :created_at,
    :description,
    :duration,
    :episode_number,
    :guest_ids,
    :guest_names,
    :host_ids,
    :id,
    :origin_entity_id,
    :playlist_id,
    :public_profile_config,
    :publish_date,
    :thumbnail_url,
    :title,
    :transcript_id,
    :updated_at,
    :used_in_podcast,
    :used_in_public_profile,
    :video_id,
    :video_url
  ]

  @primitive_fields ~w(conversation_starters created_at description duration episode_number guest_ids guest_names host_ids id origin_entity_id playlist_id public_profile_config publish_date thumbnail_url title transcript_id updated_at used_in_podcast used_in_public_profile video_id video_url)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      conversation_starters: map["conversation_starters"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      description: map["description"],
      duration: map["duration"],
      episode_number: map["episode_number"],
      guest_ids: map["guest_ids"],
      guest_names: map["guest_names"],
      host_ids: map["host_ids"],
      id: map["id"],
      origin_entity_id: map["origin_entity_id"],
      playlist_id: map["playlist_id"],
      public_profile_config: map["public_profile_config"],
      publish_date: OriginsSdk.Internal.decode_datetime(map["publish_date"]),
      thumbnail_url: map["thumbnail_url"],
      title: map["title"],
      transcript_id: map["transcript_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      used_in_podcast: map["used_in_podcast"],
      used_in_public_profile: map["used_in_public_profile"],
      video_id: map["video_id"],
      video_url: map["video_url"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
