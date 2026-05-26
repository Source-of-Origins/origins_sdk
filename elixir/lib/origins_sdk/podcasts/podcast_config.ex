defmodule OriginsSdk.Podcasts.PodcastConfig do
  @moduledoc """
  Mirror of `Origins.Podcasts.PodcastConfig` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    appearance_config: map() | nil,
    conversation_starter_config: map() | nil,
    created_at: DateTime.t(),
    cta_button_border_color: String.t() | nil,
    entity_profile_id: String.t() | nil,
    episodes: list() | nil,
    featured_video_url: String.t() | nil,
    hero_cta_link: String.t() | nil,
    hero_cta_text: String.t() | nil,
    id: String.t(),
    is_public: boolean() | nil,
    logo_link_type: String.t() | nil,
    logo_link_url: String.t() | nil,
    origins_button_border_color: String.t() | nil,
    origins_button_text: String.t() | nil,
    origins_button_text_color: String.t() | nil,
    origins_button_visible: boolean() | nil,
    page_subtitle: String.t() | nil,
    page_title: String.t() | nil,
    playlist_id: String.t() | nil,
    trailer_url: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :appearance_config,
    :conversation_starter_config,
    :created_at,
    :cta_button_border_color,
    :entity_profile_id,
    :episodes,
    :featured_video_url,
    :hero_cta_link,
    :hero_cta_text,
    :id,
    :is_public,
    :logo_link_type,
    :logo_link_url,
    :origins_button_border_color,
    :origins_button_text,
    :origins_button_text_color,
    :origins_button_visible,
    :page_subtitle,
    :page_title,
    :playlist_id,
    :trailer_url,
    :updated_at
  ]

  @primitive_fields ~w(appearance_config conversation_starter_config created_at cta_button_border_color entity_profile_id episodes featured_video_url hero_cta_link hero_cta_text id is_public logo_link_type logo_link_url origins_button_border_color origins_button_text origins_button_text_color origins_button_visible page_subtitle page_title playlist_id trailer_url updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      appearance_config: map["appearance_config"],
      conversation_starter_config: map["conversation_starter_config"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      cta_button_border_color: map["cta_button_border_color"],
      entity_profile_id: map["entity_profile_id"],
      episodes: map["episodes"],
      featured_video_url: map["featured_video_url"],
      hero_cta_link: map["hero_cta_link"],
      hero_cta_text: map["hero_cta_text"],
      id: map["id"],
      is_public: map["is_public"],
      logo_link_type: map["logo_link_type"],
      logo_link_url: map["logo_link_url"],
      origins_button_border_color: map["origins_button_border_color"],
      origins_button_text: map["origins_button_text"],
      origins_button_text_color: map["origins_button_text_color"],
      origins_button_visible: map["origins_button_visible"],
      page_subtitle: map["page_subtitle"],
      page_title: map["page_title"],
      playlist_id: map["playlist_id"],
      trailer_url: map["trailer_url"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
