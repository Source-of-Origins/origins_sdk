defmodule OriginsSdk.Libraries.UpdateLibrarySyncFilter do
  @moduledoc """
  Input + metadata types for `update_library_sync_filter`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_library_sync_filter`."

    @type t :: %__MODULE__{
          filters: map()
        }

    @enforce_keys [:filters]
    defstruct [:filters]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"filters" => input.filters}
    end
  end


end
