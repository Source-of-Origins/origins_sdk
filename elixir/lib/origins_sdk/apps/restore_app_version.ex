defmodule OriginsSdk.Apps.RestoreAppVersion do
  @moduledoc """
  Input + metadata types for `restore_app_version`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `restore_app_version`."

    @type t :: %__MODULE__{
          version_id: String.t()
        }

    @enforce_keys [:version_id]
    defstruct [:version_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"version_id" => input.version_id}
    end
  end


end
