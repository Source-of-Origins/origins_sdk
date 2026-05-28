defmodule OriginsSdk.Apps.GetAppForOriginTypeAndSlug do
  @moduledoc """
  Input + metadata types for `get_app_for_origin_type_and_slug`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_app_for_origin_type_and_slug`."

    @type t :: %__MODULE__{
          app_type: String.t(),
          origin_entity_id: String.t(),
          slug: String.t()
        }

    @enforce_keys [:app_type, :origin_entity_id, :slug]
    defstruct [:app_type, :origin_entity_id, :slug]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_type" => input.app_type, "origin_entity_id" => input.origin_entity_id, "slug" => input.slug}
    end
  end


end
