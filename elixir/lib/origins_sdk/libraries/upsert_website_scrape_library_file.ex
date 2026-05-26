defmodule OriginsSdk.Libraries.UpsertWebsiteScrapeLibraryFile do
  @moduledoc """
  Input + metadata types for `upsert_website_scrape_library_file`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `upsert_website_scrape_library_file`."

    @type t :: %__MODULE__{
          item_content: String.t(),
          item_name: String.t(),
          item_url: String.t(),
          library_id: String.t(),
          source_metadata: map() | nil
        }

    @enforce_keys [:item_content, :item_name, :item_url, :library_id]
    defstruct [:item_content, :item_name, :item_url, :library_id, :source_metadata]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"item_content" => input.item_content, "item_name" => input.item_name, "item_url" => input.item_url, "library_id" => input.library_id, "source_metadata" => input.source_metadata}
    end
  end


end
