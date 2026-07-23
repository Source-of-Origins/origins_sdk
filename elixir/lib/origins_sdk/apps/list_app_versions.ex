defmodule OriginsSdk.Apps.ListAppVersions do
  @moduledoc """
  Input + metadata types for `list_app_versions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_app_versions`."

    @type t :: %__MODULE__{
          app_id: String.t()
        }

    @enforce_keys [:app_id]
    defstruct [:app_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id}
    end
  end


end
