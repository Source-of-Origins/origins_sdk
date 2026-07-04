defmodule OriginsSdk.Apps.App do
  @moduledoc """
  Mirror of `Origins.Apps.App` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    generation_error: String.t() | nil,
    generation_format: String.t() | nil,
    generation_prompt: String.t() | nil,
    generation_status: String.t(),
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
    :created_at,
    :generation_error,
    :generation_format,
    :generation_prompt,
    :generation_status,
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

  @primitive_fields ~w(created_at generation_error generation_format generation_prompt generation_status id is_published markdoc_content meta origin_entity_id page_type slug source title updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      generation_error: map["generation_error"],
      generation_format: map["generation_format"],
      generation_prompt: map["generation_prompt"],
      generation_status: map["generation_status"],
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
