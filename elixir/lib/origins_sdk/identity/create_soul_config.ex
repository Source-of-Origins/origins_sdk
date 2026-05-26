defmodule OriginsSdk.Identity.CreateSoulConfig do
  @moduledoc """
  Input + metadata types for `create_soul_config`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_soul_config`."

    @type t :: %__MODULE__{
          communication_style: any() | nil,
          conversation_starters: any() | nil,
          core_instructions: any() | nil,
          experience_settings: any() | nil,
          guardrails_settings: map() | nil,
          origin_entity_id: String.t() | nil,
          personality_traits: any() | nil,
          purpose_statement: String.t() | nil,
          response_format_preferences: any() | nil,
          response_length: String.t() | nil,
          speaking_tone: String.t() | nil,
          vocabulary_preferences: any() | nil
        }

    @enforce_keys []
    defstruct [:communication_style, :conversation_starters, :core_instructions, :experience_settings, :guardrails_settings, :origin_entity_id, :personality_traits, :purpose_statement, :response_format_preferences, :response_length, :speaking_tone, :vocabulary_preferences]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"communication_style" => input.communication_style, "conversation_starters" => input.conversation_starters, "core_instructions" => input.core_instructions, "experience_settings" => input.experience_settings, "guardrails_settings" => input.guardrails_settings, "origin_entity_id" => input.origin_entity_id, "personality_traits" => input.personality_traits, "purpose_statement" => input.purpose_statement, "response_format_preferences" => input.response_format_preferences, "response_length" => input.response_length, "speaking_tone" => input.speaking_tone, "vocabulary_preferences" => input.vocabulary_preferences}
    end
  end


end
