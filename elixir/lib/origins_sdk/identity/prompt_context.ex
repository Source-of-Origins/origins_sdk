defmodule OriginsSdk.Identity.PromptContext do
  @moduledoc """
  Mirror of `Origins.Identity.PromptContext` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    context_text: String.t(),
    created_at: DateTime.t(),
    guardrail_config: any() | nil,
    id: String.t(),
    is_active: boolean() | nil,
    is_default: boolean() | nil,
    name: String.t(),
    origin_entity_id: String.t(),
    prompt_tool_ids: list() | nil,
    public_description: String.t() | nil,
    public_title: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :context_text,
    :created_at,
    :guardrail_config,
    :id,
    :is_active,
    :is_default,
    :name,
    :origin_entity_id,
    :prompt_tool_ids,
    :public_description,
    :public_title,
    :updated_at
  ]

  @primitive_fields ~w(context_text created_at guardrail_config id is_active is_default name origin_entity_id prompt_tool_ids public_description public_title updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:context_text, :created_at, {:guardrail_config, [:allowed_toxicity_categories, :confidence_threshold, :grounding_check, :grounding_threshold, :input_jailbreak_detection, :input_max_length, :input_prompt_injection_detection, :input_toxicity_detection, :output_content_moderation, :output_data_leakage_prevention, :output_toxicity_detection]}, :id, :is_active, :is_default, :name, :origin_entity_id, :prompt_tool_ids, :public_description, :public_title, :updated_at]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      context_text: map["context_text"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      guardrail_config: map["guardrail_config"],
      id: map["id"],
      is_active: map["is_active"],
      is_default: map["is_default"],
      name: map["name"],
      origin_entity_id: map["origin_entity_id"],
      prompt_tool_ids: map["prompt_tool_ids"],
      public_description: map["public_description"],
      public_title: map["public_title"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
