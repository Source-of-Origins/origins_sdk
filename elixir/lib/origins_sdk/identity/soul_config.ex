defmodule OriginsSdk.Identity.SoulConfig do
  @moduledoc """
  Mirror of `Origins.Identity.SoulConfig` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    communication_style: any() | nil,
    conversation_starters: any() | nil,
    core_instructions: any() | nil,
    created_at: DateTime.t(),
    experience_settings: any() | nil,
    guardrails_settings: map() | nil,
    id: String.t(),
    origin_entity_id: String.t() | nil,
    personality_traits: any() | nil,
    purpose_statement: String.t() | nil,
    response_format_preferences: any() | nil,
    response_length: String.t() | nil,
    speaking_tone: String.t() | nil,
    updated_at: DateTime.t(),
    vocabulary_preferences: any() | nil
    }

  defstruct [
    :communication_style,
    :conversation_starters,
    :core_instructions,
    :created_at,
    :experience_settings,
    :guardrails_settings,
    :id,
    :origin_entity_id,
    :personality_traits,
    :purpose_statement,
    :response_format_preferences,
    :response_length,
    :speaking_tone,
    :updated_at,
    :vocabulary_preferences
  ]

  @primitive_fields ~w(communication_style conversation_starters core_instructions created_at experience_settings guardrails_settings id origin_entity_id personality_traits purpose_statement response_format_preferences response_length speaking_tone updated_at vocabulary_preferences)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      communication_style: map["communication_style"],
      conversation_starters: map["conversation_starters"],
      core_instructions: map["core_instructions"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      experience_settings: map["experience_settings"],
      guardrails_settings: map["guardrails_settings"],
      id: map["id"],
      origin_entity_id: map["origin_entity_id"],
      personality_traits: map["personality_traits"],
      purpose_statement: map["purpose_statement"],
      response_format_preferences: map["response_format_preferences"],
      response_length: map["response_length"],
      speaking_tone: map["speaking_tone"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      vocabulary_preferences: map["vocabulary_preferences"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
