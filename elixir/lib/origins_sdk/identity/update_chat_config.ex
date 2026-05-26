defmodule OriginsSdk.Identity.UpdateChatConfig do
  @moduledoc """
  Input + metadata types for `update_chat_config`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_chat_config`."

    @type t :: %__MODULE__{
          available_avatar_ids: list() | nil,
          button_shape: String.t() | nil,
          chat_bubble_color: String.t() | nil,
          chat_bubble_text_color: String.t() | nil,
          chat_button_border_color: String.t() | nil,
          chat_button_color: String.t() | nil,
          chat_button_icon: String.t() | nil,
          chat_button_position: String.t() | nil,
          chat_button_show_icon: boolean() | nil,
          chat_button_text: String.t() | nil,
          chat_button_text_color: String.t() | nil,
          chat_window_title: String.t() | nil,
          enable_chat_history: boolean() | nil,
          enable_sound_notifications: boolean() | nil,
          header_style: String.t() | nil,
          inherits_descendant_knowledge: boolean(),
          input_placeholder: String.t() | nil,
          input_style: String.t() | nil,
          origin_entity_id: String.t() | nil,
          podcast_button_border_color: String.t() | nil,
          podcast_button_color: String.t() | nil,
          podcast_button_icon: String.t() | nil,
          podcast_button_shape: String.t() | nil,
          podcast_button_show_icon: boolean() | nil,
          podcast_button_text: String.t() | nil,
          podcast_button_text_color: String.t() | nil,
          podcast_show_brand_logo: boolean() | nil,
          public_profile_button_border_color: String.t() | nil,
          public_profile_button_color: String.t() | nil,
          public_profile_button_icon: String.t() | nil,
          public_profile_button_shape: String.t() | nil,
          public_profile_button_show_icon: boolean() | nil,
          public_profile_button_text: String.t() | nil,
          public_profile_button_text_color: String.t() | nil,
          public_profile_show_brand_logo: boolean() | nil,
          response_delay: integer() | nil,
          send_button_style: String.t() | nil,
          show_ai_message_avatar: boolean() | nil,
          show_brand_logo: boolean() | nil,
          show_close_button: boolean() | nil,
          show_header_avatar: boolean() | nil,
          show_powered_by: boolean() | nil,
          show_typing_indicator: boolean() | nil,
          use_chat_button_for_podcast: boolean() | nil,
          use_chat_button_for_public_profile: boolean() | nil,
          user_bubble_color: String.t() | nil,
          user_bubble_text_color: String.t() | nil,
          welcome_message: String.t() | nil,
          window_animation: String.t() | nil,
          window_border_radius: String.t() | nil,
          window_position_mode: String.t() | nil,
          window_size: String.t() | nil
        }

    @enforce_keys [:inherits_descendant_knowledge]
    defstruct [:available_avatar_ids, :button_shape, :chat_bubble_color, :chat_bubble_text_color, :chat_button_border_color, :chat_button_color, :chat_button_icon, :chat_button_position, :chat_button_show_icon, :chat_button_text, :chat_button_text_color, :chat_window_title, :enable_chat_history, :enable_sound_notifications, :header_style, :inherits_descendant_knowledge, :input_placeholder, :input_style, :origin_entity_id, :podcast_button_border_color, :podcast_button_color, :podcast_button_icon, :podcast_button_shape, :podcast_button_show_icon, :podcast_button_text, :podcast_button_text_color, :podcast_show_brand_logo, :public_profile_button_border_color, :public_profile_button_color, :public_profile_button_icon, :public_profile_button_shape, :public_profile_button_show_icon, :public_profile_button_text, :public_profile_button_text_color, :public_profile_show_brand_logo, :response_delay, :send_button_style, :show_ai_message_avatar, :show_brand_logo, :show_close_button, :show_header_avatar, :show_powered_by, :show_typing_indicator, :use_chat_button_for_podcast, :use_chat_button_for_public_profile, :user_bubble_color, :user_bubble_text_color, :welcome_message, :window_animation, :window_border_radius, :window_position_mode, :window_size]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"available_avatar_ids" => input.available_avatar_ids, "button_shape" => input.button_shape, "chat_bubble_color" => input.chat_bubble_color, "chat_bubble_text_color" => input.chat_bubble_text_color, "chat_button_border_color" => input.chat_button_border_color, "chat_button_color" => input.chat_button_color, "chat_button_icon" => input.chat_button_icon, "chat_button_position" => input.chat_button_position, "chat_button_show_icon" => input.chat_button_show_icon, "chat_button_text" => input.chat_button_text, "chat_button_text_color" => input.chat_button_text_color, "chat_window_title" => input.chat_window_title, "enable_chat_history" => input.enable_chat_history, "enable_sound_notifications" => input.enable_sound_notifications, "header_style" => input.header_style, "inherits_descendant_knowledge" => input.inherits_descendant_knowledge, "input_placeholder" => input.input_placeholder, "input_style" => input.input_style, "origin_entity_id" => input.origin_entity_id, "podcast_button_border_color" => input.podcast_button_border_color, "podcast_button_color" => input.podcast_button_color, "podcast_button_icon" => input.podcast_button_icon, "podcast_button_shape" => input.podcast_button_shape, "podcast_button_show_icon" => input.podcast_button_show_icon, "podcast_button_text" => input.podcast_button_text, "podcast_button_text_color" => input.podcast_button_text_color, "podcast_show_brand_logo" => input.podcast_show_brand_logo, "public_profile_button_border_color" => input.public_profile_button_border_color, "public_profile_button_color" => input.public_profile_button_color, "public_profile_button_icon" => input.public_profile_button_icon, "public_profile_button_shape" => input.public_profile_button_shape, "public_profile_button_show_icon" => input.public_profile_button_show_icon, "public_profile_button_text" => input.public_profile_button_text, "public_profile_button_text_color" => input.public_profile_button_text_color, "public_profile_show_brand_logo" => input.public_profile_show_brand_logo, "response_delay" => input.response_delay, "send_button_style" => input.send_button_style, "show_ai_message_avatar" => input.show_ai_message_avatar, "show_brand_logo" => input.show_brand_logo, "show_close_button" => input.show_close_button, "show_header_avatar" => input.show_header_avatar, "show_powered_by" => input.show_powered_by, "show_typing_indicator" => input.show_typing_indicator, "use_chat_button_for_podcast" => input.use_chat_button_for_podcast, "use_chat_button_for_public_profile" => input.use_chat_button_for_public_profile, "user_bubble_color" => input.user_bubble_color, "user_bubble_text_color" => input.user_bubble_text_color, "welcome_message" => input.welcome_message, "window_animation" => input.window_animation, "window_border_radius" => input.window_border_radius, "window_position_mode" => input.window_position_mode, "window_size" => input.window_size}
    end
  end


end
