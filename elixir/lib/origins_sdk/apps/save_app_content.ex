defmodule OriginsSdk.Apps.SaveAppContent do
  @moduledoc """
  Input + metadata types for `save_app_content`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `save_app_content`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          markdoc_content: String.t(),
          title: String.t() | nil
        }

    @enforce_keys [:app_id, :markdoc_content]
    defstruct [:app_id, :markdoc_content, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "markdoc_content" => input.markdoc_content, "title" => input.title}
    end
  end


end
