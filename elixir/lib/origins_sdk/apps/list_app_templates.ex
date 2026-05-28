defmodule OriginsSdk.Apps.ListAppTemplates do
  @moduledoc """
  Input + metadata types for `list_app_templates`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_app_templates`."

    @type t :: %__MODULE__{

        }

    @enforce_keys []
    defstruct []

    @doc false
    def to_json(%__MODULE__{} = _input) do
      %{}
    end
  end


end
