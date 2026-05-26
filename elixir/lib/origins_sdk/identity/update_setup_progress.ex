defmodule OriginsSdk.Identity.UpdateSetupProgress do
  @moduledoc """
  Input + metadata types for `update_setup_progress`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_setup_progress`."

    @type t :: %__MODULE__{
          ai_suggested_links: map() | nil,
          api_extracted_data: map() | nil,
          completed_steps: list() | nil,
          current_step: integer() | nil,
          entity_name: String.t(),
          is_completed: boolean() | nil,
          metadata: map() | nil,
          onboarding_mode: String.t() | nil,
          origin_entity_id: String.t() | nil,
          social_media_links: map() | nil
        }

    @enforce_keys [:entity_name]
    defstruct [:ai_suggested_links, :api_extracted_data, :completed_steps, :current_step, :entity_name, :is_completed, :metadata, :onboarding_mode, :origin_entity_id, :social_media_links]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"ai_suggested_links" => input.ai_suggested_links, "api_extracted_data" => input.api_extracted_data, "completed_steps" => input.completed_steps, "current_step" => input.current_step, "entity_name" => input.entity_name, "is_completed" => input.is_completed, "metadata" => input.metadata, "onboarding_mode" => input.onboarding_mode, "origin_entity_id" => input.origin_entity_id, "social_media_links" => input.social_media_links}
    end
  end


end
