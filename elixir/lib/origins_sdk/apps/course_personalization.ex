defmodule OriginsSdk.Apps.CoursePersonalization do
  @moduledoc """
  Mirror of `Origins.Apps.CoursePersonalization` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    briefings: list(),
    generation_error: String.t() | nil,
    generation_format: String.t() | nil,
    generation_prompt: String.t() | nil,
    id: String.t(),
    markdoc_content: String.t(),
    source: String.t(),
    title: String.t() | nil
    }

  defstruct [
    :briefings,
    :generation_error,
    :generation_format,
    :generation_prompt,
    :id,
    :markdoc_content,
    :source,
    :title
  ]

  @primitive_fields ~w(briefings generation_error generation_format generation_prompt id markdoc_content source title)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [{:briefings, [:date, :generated_at, {:pages, [:body]}, :read_at, :session_id]}, :generation_error, :generation_format, :generation_prompt, :id, :markdoc_content, :source, :title]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      briefings: map["briefings"],
      generation_error: map["generation_error"],
      generation_format: map["generation_format"],
      generation_prompt: map["generation_prompt"],
      id: map["id"],
      markdoc_content: map["markdoc_content"],
      source: map["source"],
      title: map["title"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
