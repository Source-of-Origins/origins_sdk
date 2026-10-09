defmodule OriginsSdk.Apps.App do
  @moduledoc """
  Mirror of `Origins.Apps.App` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    assessment_graph: OriginsSdk.Apps.AssessmentGraph.t() | nil,
    authoring_document: OriginsSdk.Apps.AuthoringDocument.t() | nil,
    created_at: DateTime.t(),
    example_briefing: OriginsSdk.Apps.DailyBriefingResult.t() | nil,
    generation_error: String.t() | nil,
    generation_format: String.t() | nil,
    generation_prompt: String.t() | nil,
    generation_status: String.t() | nil,
    has_letta_agent: boolean() | nil,
    id: String.t(),
    is_published: boolean() | nil,
    markdoc_content: String.t(),
    meta: map() | nil,
    origin_entity_id: String.t(),
    page_type: String.t(),
    slug: String.t(),
    source: String.t(),
    title: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :assessment_graph,
    :authoring_document,
    :created_at,
    :example_briefing,
    :generation_error,
    :generation_format,
    :generation_prompt,
    :generation_status,
    :has_letta_agent,
    :id,
    :is_published,
    :markdoc_content,
    :meta,
    :origin_entity_id,
    :page_type,
    :slug,
    :source,
    :title,
    :updated_at
  ]

  @primitive_fields ~w(created_at generation_error generation_format generation_prompt generation_status has_letta_agent id is_published markdoc_content meta origin_entity_id page_type slug source title updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [{:assessment_graph, [{:edges, [:condition_field, :condition_op, :condition_type, :condition_value, :source, :target]}, {:nodes, [:description, :highlight, :id, :kind, :loading_bars, :max, :min, {:options, [:label, :route, :segment, :value]}, :required, {:sliders, [:high_label, :id, :label, :low_label, :max, :min]}, :subtitle, :summary_items, :title, :type, :weight]}, :start_node]}, {:authoring_document, [:blocks, :config, :errors, :page_type]}, :created_at, {:example_briefing, [:date, :generated_at, {:pages, [:body]}, :read_at, :session_id]}, :generation_error, :generation_format, :generation_prompt, :generation_status, :has_letta_agent, :id, :is_published, :markdoc_content, :meta, :origin_entity_id, :page_type, :slug, :source, :title, :updated_at]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      assessment_graph: OriginsSdk.Apps.AssessmentGraph.from_json(map["assessment_graph"]),
      authoring_document: OriginsSdk.Apps.AuthoringDocument.from_json(map["authoring_document"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      example_briefing: OriginsSdk.Apps.DailyBriefingResult.from_json(map["example_briefing"]),
      generation_error: map["generation_error"],
      generation_format: map["generation_format"],
      generation_prompt: map["generation_prompt"],
      generation_status: map["generation_status"],
      has_letta_agent: map["has_letta_agent"],
      id: map["id"],
      is_published: map["is_published"],
      markdoc_content: map["markdoc_content"],
      meta: map["meta"],
      origin_entity_id: map["origin_entity_id"],
      page_type: map["page_type"],
      slug: map["slug"],
      source: map["source"],
      title: map["title"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
