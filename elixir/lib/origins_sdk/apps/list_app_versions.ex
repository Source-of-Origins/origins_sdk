defmodule OriginsSdk.Apps.ListAppVersions do
  @moduledoc """
  Input + metadata types for `list_app_versions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_app_versions`."

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
