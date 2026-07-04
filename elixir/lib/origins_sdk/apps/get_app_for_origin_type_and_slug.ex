defmodule OriginsSdk.Apps.GetAppForOriginTypeAndSlug do
  @moduledoc """
  Input + metadata types for `get_app_for_origin_type_and_slug`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_app_for_origin_type_and_slug`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t(),
          page_type: String.t(),
          slug: String.t()
        }

    @enforce_keys [:origin_entity_id, :page_type, :slug]
    defstruct [:origin_entity_id, :page_type, :slug]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "page_type" => input.page_type, "slug" => input.slug}
    end
  end


end
