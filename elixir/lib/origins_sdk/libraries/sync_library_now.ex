defmodule OriginsSdk.Libraries.SyncLibraryNow do
  @moduledoc """
  Input + metadata types for `sync_library_now`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `sync_library_now`."

    @type t :: %__MODULE__{
          id: String.t()
        }

    @enforce_keys [:id]
    defstruct [:id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id" => input.id}
    end
  end


end
