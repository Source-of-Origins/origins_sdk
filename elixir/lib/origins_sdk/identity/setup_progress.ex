defmodule OriginsSdk.Identity.SetupProgress do
  @moduledoc """
  Mirror of `Origins.Identity.SetupProgress` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    ai_suggested_links: map() | nil,
    api_extracted_data: map() | nil,
    completed_steps: list() | nil,
    created_at: DateTime.t(),
    current_step: integer() | nil,
    entity_name: String.t(),
    id: String.t(),
    is_completed: boolean() | nil,
    metadata: map() | nil,
    onboarding_mode: String.t() | nil,
    origin_entity_id: String.t() | nil,
    social_media_links: map() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :ai_suggested_links,
    :api_extracted_data,
    :completed_steps,
    :created_at,
    :current_step,
    :entity_name,
    :id,
    :is_completed,
    :metadata,
    :onboarding_mode,
    :origin_entity_id,
    :social_media_links,
    :updated_at
  ]

  @primitive_fields ~w(ai_suggested_links api_extracted_data completed_steps created_at current_step entity_name id is_completed metadata onboarding_mode origin_entity_id social_media_links updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      ai_suggested_links: map["ai_suggested_links"],
      api_extracted_data: map["api_extracted_data"],
      completed_steps: map["completed_steps"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      current_step: map["current_step"],
      entity_name: map["entity_name"],
      id: map["id"],
      is_completed: map["is_completed"],
      metadata: map["metadata"],
      onboarding_mode: map["onboarding_mode"],
      origin_entity_id: map["origin_entity_id"],
      social_media_links: map["social_media_links"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
