defmodule OriginsSdk.Identity.UpdatePromptTool do
  @moduledoc """
  Input + metadata types for `update_prompt_tool`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_prompt_tool`."

    @type t :: %__MODULE__{
          auto_approve: boolean() | nil,
          description: String.t(),
          is_active: boolean() | nil,
          letta_tools: list() | nil,
          max_tokens: integer() | nil,
          model: String.t() | nil,
          name: String.t(),
          prompt_template: String.t(),
          source_origin_entity_id: String.t() | nil,
          temperature: float() | nil
        }

    @enforce_keys [:description, :name, :prompt_template]
    defstruct [:auto_approve, :description, :is_active, :letta_tools, :max_tokens, :model, :name, :prompt_template, :source_origin_entity_id, :temperature]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"auto_approve" => input.auto_approve, "description" => input.description, "is_active" => input.is_active, "letta_tools" => input.letta_tools, "max_tokens" => input.max_tokens, "model" => input.model, "name" => input.name, "prompt_template" => input.prompt_template, "source_origin_entity_id" => input.source_origin_entity_id, "temperature" => input.temperature}
    end
  end


end
