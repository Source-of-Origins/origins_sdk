defmodule OriginsSdk.Identity.UpdatePromptContext do
  @moduledoc """
  Input + metadata types for `update_prompt_context`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_prompt_context`."

    @type t :: %__MODULE__{
          context_text: String.t(),
          guardrail_config: any() | nil,
          is_active: boolean() | nil,
          is_default: boolean() | nil,
          name: String.t(),
          prompt_tool_ids: list() | nil,
          public_description: String.t() | nil,
          public_title: String.t() | nil
        }

    @enforce_keys [:context_text, :name]
    defstruct [:context_text, :guardrail_config, :is_active, :is_default, :name, :prompt_tool_ids, :public_description, :public_title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"context_text" => input.context_text, "guardrail_config" => input.guardrail_config, "is_active" => input.is_active, "is_default" => input.is_default, "name" => input.name, "prompt_tool_ids" => input.prompt_tool_ids, "public_description" => input.public_description, "public_title" => input.public_title}
    end
  end


end
