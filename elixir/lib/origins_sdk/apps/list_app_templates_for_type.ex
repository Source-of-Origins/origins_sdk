defmodule OriginsSdk.Apps.ListAppTemplatesForType do
  @moduledoc """
  Input + metadata types for `list_app_templates_for_type`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_app_templates_for_type`."

    @type t :: %__MODULE__{
          page_type: String.t()
        }

    @enforce_keys [:page_type]
    defstruct [:page_type]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"page_type" => input.page_type}
    end
  end


end
