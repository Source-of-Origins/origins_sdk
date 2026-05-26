defmodule OriginsSdk.Identity.GetOriginEntityBySlug do
  @moduledoc """
  Input + metadata types for `get_origin_entity_by_slug`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_origin_entity_by_slug`."

    @type t :: %__MODULE__{
          slug: String.t()
        }

    @enforce_keys [:slug]
    defstruct [:slug]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"slug" => input.slug}
    end
  end


end
