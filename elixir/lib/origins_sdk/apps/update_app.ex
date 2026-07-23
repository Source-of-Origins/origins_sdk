defmodule OriginsSdk.Apps.UpdateApp do
  @moduledoc """
  Input + metadata types for `update_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_app`."

    @type t :: %__MODULE__{
          generation_prompt: String.t() | nil,
          markdoc_content: String.t(),
          meta: map() | nil,
          slug: String.t(),
          title: String.t() | nil
        }

    @enforce_keys [:markdoc_content, :slug]
    defstruct [:generation_prompt, :markdoc_content, :meta, :slug, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"generation_prompt" => input.generation_prompt, "markdoc_content" => input.markdoc_content, "meta" => input.meta, "slug" => input.slug, "title" => input.title}
    end
  end


end
