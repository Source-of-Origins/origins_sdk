defmodule OriginsSdk.Identity.UserProfile do
  @moduledoc """
  Mirror of `Origins.Identity.UserProfile` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    avatar_url: String.t() | nil,
    bio: String.t() | nil,
    created_at: DateTime.t(),
    display_name: String.t() | nil,
    email: String.t() | nil,
    id: String.t(),
    notification_preferences: map() | nil,
    privacy_settings: map() | nil,
    theme_preference: String.t() | nil,
    updated_at: DateTime.t(),
    user_id: String.t()
    }

  defstruct [
    :avatar_url,
    :bio,
    :created_at,
    :display_name,
    :email,
    :id,
    :notification_preferences,
    :privacy_settings,
    :theme_preference,
    :updated_at,
    :user_id
  ]

  @primitive_fields ~w(avatar_url bio created_at display_name email id notification_preferences privacy_settings theme_preference updated_at user_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      avatar_url: map["avatar_url"],
      bio: map["bio"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      display_name: map["display_name"],
      email: map["email"],
      id: map["id"],
      notification_preferences: map["notification_preferences"],
      privacy_settings: map["privacy_settings"],
      theme_preference: map["theme_preference"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_id: map["user_id"]
    }
  end
end
