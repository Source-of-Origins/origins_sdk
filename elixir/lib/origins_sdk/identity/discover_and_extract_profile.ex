defmodule OriginsSdk.Identity.DiscoverAndExtractProfile do
  @moduledoc """
  Input + metadata types for `discover_and_extract_profile`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `discover_and_extract_profile`."

    @type t :: %__MODULE__{
          category_hint: String.t(),
          entity_name: String.t(),
          website_url: String.t() | nil
        }

    @enforce_keys [:category_hint, :entity_name]
    defstruct [:category_hint, :entity_name, :website_url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"category_hint" => input.category_hint, "entity_name" => input.entity_name, "website_url" => input.website_url}
    end
  end


end
