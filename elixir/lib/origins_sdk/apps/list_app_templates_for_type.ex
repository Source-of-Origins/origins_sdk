defmodule OriginsSdk.Apps.ListAppTemplatesForType do
  @moduledoc """
  Input + metadata types for `list_app_templates_for_type`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_app_templates_for_type`."

    @type t :: %__MODULE__{
          app_type: String.t()
        }

    @enforce_keys [:app_type]
    defstruct [:app_type]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_type" => input.app_type}
    end
  end


end
