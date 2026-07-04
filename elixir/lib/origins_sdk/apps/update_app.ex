defmodule OriginsSdk.Apps.UpdateApp do
  @moduledoc """
  Input + metadata types for `update_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_app`."

    @type t :: %__MODULE__{
          generation_error: String.t() | nil,
          generation_format: String.t() | nil,
          generation_prompt: String.t() | nil,
          generation_status: String.t(),
          is_published: boolean() | nil,
          markdoc_content: String.t(),
          meta: map() | nil,
          origin_entity_id: String.t(),
          page_type: String.t(),
          slug: String.t(),
          source: String.t(),
          title: String.t() | nil
        }

    @enforce_keys [:generation_status, :markdoc_content, :origin_entity_id, :page_type, :slug, :source]
    defstruct [:generation_error, :generation_format, :generation_prompt, :generation_status, :is_published, :markdoc_content, :meta, :origin_entity_id, :page_type, :slug, :source, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"generation_error" => input.generation_error, "generation_format" => input.generation_format, "generation_prompt" => input.generation_prompt, "generation_status" => input.generation_status, "is_published" => input.is_published, "markdoc_content" => input.markdoc_content, "meta" => input.meta, "origin_entity_id" => input.origin_entity_id, "page_type" => input.page_type, "slug" => input.slug, "source" => input.source, "title" => input.title}
    end
  end


end
