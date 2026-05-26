defmodule OriginsSdk.Podcasts.UpdatePodcastConfig do
  @moduledoc """
  Input + metadata types for `update_podcast_config`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_podcast_config`."

    @type t :: %__MODULE__{
          appearance_config: map() | nil,
          conversation_starter_config: map() | nil,
          cta_button_border_color: String.t() | nil,
          entity_profile_id: String.t() | nil,
          episodes: list() | nil,
          featured_video_url: String.t() | nil,
          hero_cta_link: String.t() | nil,
          hero_cta_text: String.t() | nil,
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
          trailer_url: String.t() | nil
        }

    @enforce_keys []
    defstruct [:appearance_config, :conversation_starter_config, :cta_button_border_color, :entity_profile_id, :episodes, :featured_video_url, :hero_cta_link, :hero_cta_text, :is_public, :logo_link_type, :logo_link_url, :origins_button_border_color, :origins_button_text, :origins_button_text_color, :origins_button_visible, :page_subtitle, :page_title, :playlist_id, :trailer_url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"appearance_config" => input.appearance_config, "conversation_starter_config" => input.conversation_starter_config, "cta_button_border_color" => input.cta_button_border_color, "entity_profile_id" => input.entity_profile_id, "episodes" => input.episodes, "featured_video_url" => input.featured_video_url, "hero_cta_link" => input.hero_cta_link, "hero_cta_text" => input.hero_cta_text, "is_public" => input.is_public, "logo_link_type" => input.logo_link_type, "logo_link_url" => input.logo_link_url, "origins_button_border_color" => input.origins_button_border_color, "origins_button_text" => input.origins_button_text, "origins_button_text_color" => input.origins_button_text_color, "origins_button_visible" => input.origins_button_visible, "page_subtitle" => input.page_subtitle, "page_title" => input.page_title, "playlist_id" => input.playlist_id, "trailer_url" => input.trailer_url}
    end
  end


end
