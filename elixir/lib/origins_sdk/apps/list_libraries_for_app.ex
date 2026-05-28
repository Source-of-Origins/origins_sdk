defmodule OriginsSdk.Apps.ListLibrariesForApp do
  @moduledoc """
  Input + metadata types for `list_libraries_for_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_libraries_for_app`."

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
