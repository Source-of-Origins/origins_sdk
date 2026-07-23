defmodule OriginsSdk.Apps.CreateApp do
  @moduledoc """
  Input + metadata types for `create_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_app`."

    @type t :: %__MODULE__{
          generation_prompt: String.t() | nil,
          is_published: boolean() | nil,
          markdoc_content: String.t(),
          meta: map() | nil,
          origin_entity_id: String.t(),
          page_type: String.t(),
          slug: String.t(),
          source: String.t(),
          title: String.t() | nil
        }

    @enforce_keys [:markdoc_content, :origin_entity_id, :page_type, :slug, :source]
    defstruct [:generation_prompt, :is_published, :markdoc_content, :meta, :origin_entity_id, :page_type, :slug, :source, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"generation_prompt" => input.generation_prompt, "is_published" => input.is_published, "markdoc_content" => input.markdoc_content, "meta" => input.meta, "origin_entity_id" => input.origin_entity_id, "page_type" => input.page_type, "slug" => input.slug, "source" => input.source, "title" => input.title}
    end
  end


end
