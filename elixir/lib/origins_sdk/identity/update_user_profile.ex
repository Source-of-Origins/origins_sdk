defmodule OriginsSdk.Identity.UpdateUserProfile do
  @moduledoc """
  Input + metadata types for `update_user_profile`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_user_profile`."

    @type t :: %__MODULE__{
          avatar_url: String.t() | nil,
          bio: String.t() | nil,
          display_name: String.t() | nil,
          email: String.t() | nil,
          notification_preferences: map() | nil,
          privacy_settings: map() | nil,
          theme_preference: String.t() | nil,
          user_id: String.t()
        }

    @enforce_keys [:user_id]
    defstruct [:avatar_url, :bio, :display_name, :email, :notification_preferences, :privacy_settings, :theme_preference, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"avatar_url" => input.avatar_url, "bio" => input.bio, "display_name" => input.display_name, "email" => input.email, "notification_preferences" => input.notification_preferences, "privacy_settings" => input.privacy_settings, "theme_preference" => input.theme_preference, "user_id" => input.user_id}
    end
  end


end
