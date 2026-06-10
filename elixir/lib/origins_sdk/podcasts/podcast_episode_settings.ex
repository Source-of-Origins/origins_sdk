defmodule OriginsSdk.Podcasts.PodcastEpisodeSettings do
  @moduledoc """
  Mirror of `Origins.Podcasts.PodcastEpisodeSettings` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    ai_enabled: boolean(),
    character_id: String.t() | nil,
    created_at: DateTime.t(),
    id: String.t(),
    order: integer(),
    podcast_config_id: String.t() | nil,
    updated_at: DateTime.t(),
    visible: boolean(),
    youtube_episode_id: String.t()
    }

  defstruct [
    :ai_enabled,
    :character_id,
    :created_at,
    :id,
    :order,
    :podcast_config_id,
    :updated_at,
    :visible,
    :youtube_episode_id
  ]

  @primitive_fields ~w(ai_enabled character_id created_at id order podcast_config_id updated_at visible youtube_episode_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      ai_enabled: map["ai_enabled"],
      character_id: map["character_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      order: map["order"],
      podcast_config_id: map["podcast_config_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      visible: map["visible"],
      youtube_episode_id: map["youtube_episode_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
