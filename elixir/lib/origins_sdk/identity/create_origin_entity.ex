defmodule OriginsSdk.Identity.CreateOriginEntity do
  @moduledoc """
  Input + metadata types for `create_origin_entity`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_origin_entity`."

    @type t :: %__MODULE__{
          accent_colors: list() | nil,
          ai_generated_summary: String.t() | nil,
          appearance_config: any() | nil,
          banner_key: String.t() | nil,
          banner_url: String.t() | nil,
          categories: list() | nil,
          content_tabs_config: map() | nil,
          content_themes: list() | nil,
          core_values: list() | nil,
          description: String.t() | nil,
          engagement_metrics: map() | nil,
          extracted_content: map() | nil,
          guardrails_settings: map() | nil,
          is_active: boolean() | nil,
          is_featured: boolean() | nil,
          is_public: boolean() | nil,
          key_messaging: list() | nil,
          last_website_scrape: DateTime.t() | nil,
          mission_statement: String.t() | nil,
          name: String.t(),
          page_sections_config: map() | nil,
          parent_origin_entity_id: String.t() | nil,
          personality_traits: list() | nil,
          picture_key: String.t() | nil,
          picture_url: String.t() | nil,
          podcast_button_color: String.t() | nil,
          podcast_button_link: String.t() | nil,
          podcast_button_text: String.t() | nil,
          podcast_button_text_color: String.t() | nil,
          podcast_button_visible: boolean() | nil,
          podcast_content_settings: map() | nil,
          public_profile_config: any() | nil,
          setup_progress_id: String.t() | nil,
          slug: String.t(),
          social_links: list() | nil,
          target_audience: String.t() | nil,
          title: String.t() | nil,
          tone_of_voice: String.t() | nil,
          voice_config: map() | nil,
          voice_settings: map() | nil,
          website_content: map() | nil,
          youtube_channel_data: map() | nil,
          youtube_channel_id: String.t() | nil,
          youtube_content_settings: map() | nil,
          youtube_sync_settings: map() | nil
        }

    @enforce_keys [:name, :slug]
    defstruct [:accent_colors, :ai_generated_summary, :appearance_config, :banner_key, :banner_url, :categories, :content_tabs_config, :content_themes, :core_values, :description, :engagement_metrics, :extracted_content, :guardrails_settings, :is_active, :is_featured, :is_public, :key_messaging, :last_website_scrape, :mission_statement, :name, :page_sections_config, :parent_origin_entity_id, :personality_traits, :picture_key, :picture_url, :podcast_button_color, :podcast_button_link, :podcast_button_text, :podcast_button_text_color, :podcast_button_visible, :podcast_content_settings, :public_profile_config, :setup_progress_id, :slug, :social_links, :target_audience, :title, :tone_of_voice, :voice_config, :voice_settings, :website_content, :youtube_channel_data, :youtube_channel_id, :youtube_content_settings, :youtube_sync_settings]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"accent_colors" => input.accent_colors, "ai_generated_summary" => input.ai_generated_summary, "appearance_config" => input.appearance_config, "banner_key" => input.banner_key, "banner_url" => input.banner_url, "categories" => input.categories, "content_tabs_config" => input.content_tabs_config, "content_themes" => input.content_themes, "core_values" => input.core_values, "description" => input.description, "engagement_metrics" => input.engagement_metrics, "extracted_content" => input.extracted_content, "guardrails_settings" => input.guardrails_settings, "is_active" => input.is_active, "is_featured" => input.is_featured, "is_public" => input.is_public, "key_messaging" => input.key_messaging, "last_website_scrape" => input.last_website_scrape, "mission_statement" => input.mission_statement, "name" => input.name, "page_sections_config" => input.page_sections_config, "parent_origin_entity_id" => input.parent_origin_entity_id, "personality_traits" => input.personality_traits, "picture_key" => input.picture_key, "picture_url" => input.picture_url, "podcast_button_color" => input.podcast_button_color, "podcast_button_link" => input.podcast_button_link, "podcast_button_text" => input.podcast_button_text, "podcast_button_text_color" => input.podcast_button_text_color, "podcast_button_visible" => input.podcast_button_visible, "podcast_content_settings" => input.podcast_content_settings, "public_profile_config" => input.public_profile_config, "setup_progress_id" => input.setup_progress_id, "slug" => input.slug, "social_links" => input.social_links, "target_audience" => input.target_audience, "title" => input.title, "tone_of_voice" => input.tone_of_voice, "voice_config" => input.voice_config, "voice_settings" => input.voice_settings, "website_content" => input.website_content, "youtube_channel_data" => input.youtube_channel_data, "youtube_channel_id" => input.youtube_channel_id, "youtube_content_settings" => input.youtube_content_settings, "youtube_sync_settings" => input.youtube_sync_settings}
    end
  end


end
