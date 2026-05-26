defmodule OriginsSdk.Identity.ScrapeWebsiteContent do
  @moduledoc """
  Input + metadata types for `scrape_website_content`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `scrape_website_content`."

    @type t :: %__MODULE__{
          url: String.t()
        }

    @enforce_keys [:url]
    defstruct [:url]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"url" => input.url}
    end
  end


end
