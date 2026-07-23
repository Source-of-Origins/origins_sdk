defmodule OriginsSdk.Apps.ParseAuthoringDocument do
  @moduledoc """
  Input + metadata types for `parse_authoring_document`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `parse_authoring_document`."

    @type t :: %__MODULE__{
          content: String.t(),
          page_type: String.t()
        }

    @enforce_keys [:content, :page_type]
    defstruct [:content, :page_type]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"content" => input.content, "page_type" => input.page_type}
    end
  end


end
