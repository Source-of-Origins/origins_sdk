defmodule OriginsSdk.Libraries.PreviewLibrarySyncFilter do
  @moduledoc """
  Input + metadata types for `preview_library_sync_filter`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `preview_library_sync_filter`."

    @type t :: %__MODULE__{
          filters: map(),
          id: String.t()
        }

    @enforce_keys [:filters, :id]
    defstruct [:filters, :id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"filters" => input.filters, "id" => input.id}
    end
  end


end
