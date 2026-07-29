defmodule OriginsSdk.Apps.ListAppLibraryVfsPaths do
  @moduledoc """
  Input + metadata types for `list_app_library_vfs_paths`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_app_library_vfs_paths`."

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
