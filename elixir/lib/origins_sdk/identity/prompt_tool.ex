defmodule OriginsSdk.Identity.PromptTool do
  @moduledoc """
  Mirror of `Origins.Identity.PromptTool` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    auto_approve: boolean() | nil,
    created_at: DateTime.t(),
    description: String.t(),
    id: String.t(),
    is_active: boolean() | nil,
    letta_tools: list() | nil,
    max_tokens: integer() | nil,
    model: String.t() | nil,
    name: String.t(),
    origin_entity_id: String.t(),
    prompt_template: String.t(),
    source_origin_entity_id: String.t() | nil,
    temperature: float() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :auto_approve,
    :created_at,
    :description,
    :id,
    :is_active,
    :letta_tools,
    :max_tokens,
    :model,
    :name,
    :origin_entity_id,
    :prompt_template,
    :source_origin_entity_id,
    :temperature,
    :updated_at
  ]

  @primitive_fields ~w(auto_approve created_at description id is_active letta_tools max_tokens model name origin_entity_id prompt_template source_origin_entity_id temperature updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      auto_approve: map["auto_approve"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      description: map["description"],
      id: map["id"],
      is_active: map["is_active"],
      letta_tools: map["letta_tools"],
      max_tokens: map["max_tokens"],
      model: map["model"],
      name: map["name"],
      origin_entity_id: map["origin_entity_id"],
      prompt_template: map["prompt_template"],
      source_origin_entity_id: map["source_origin_entity_id"],
      temperature: map["temperature"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
