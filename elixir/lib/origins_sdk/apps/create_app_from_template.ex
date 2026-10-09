defmodule OriginsSdk.Apps.CreateAppFromTemplate do
  @moduledoc """
  Input + metadata types for `create_app_from_template`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_app_from_template`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t(),
          slug: String.t() | nil,
          template_id: String.t(),
          title: String.t() | nil
        }

    @enforce_keys [:origin_entity_id, :template_id]
    defstruct [:origin_entity_id, :slug, :template_id, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "slug" => input.slug, "template_id" => input.template_id, "title" => input.title}
    end
  end


end
