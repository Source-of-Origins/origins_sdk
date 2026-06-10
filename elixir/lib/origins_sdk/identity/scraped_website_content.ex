defmodule OriginsSdk.Identity.ScrapedWebsiteContent do
  @moduledoc """
  Mirror of `Origins.Identity.OriginEntity.ScrapedWebsiteContent` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    headings: list() | nil,
    meta_description: String.t() | nil,
    meta_keywords: String.t() | nil,
    open_graph: any() | nil,
    paragraphs: list() | nil,
    scraped_at: String.t() | nil,
    text_content: String.t() | nil,
    title: String.t() | nil,
    url: String.t() | nil
    }

  defstruct [
    :headings,
    :meta_description,
    :meta_keywords,
    :open_graph,
    :paragraphs,
    :scraped_at,
    :text_content,
    :title,
    :url
  ]

  @primitive_fields ~w(headings meta_description meta_keywords open_graph paragraphs scraped_at text_content title url)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      headings: map["headings"],
      meta_description: map["meta_description"],
      meta_keywords: map["meta_keywords"],
      open_graph: map["open_graph"],
      paragraphs: map["paragraphs"],
      scraped_at: map["scraped_at"],
      text_content: map["text_content"],
      title: map["title"],
      url: map["url"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
