defmodule OriginsSdk.Libraries.UpdateLibrary do
  @moduledoc """
  Input + metadata types for `update_library`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_library`."

    @type t :: %__MODULE__{
          auto_resync_enabled: boolean(),
          inherits_to_descendants: boolean(),
          name: String.t()
        }

    @enforce_keys [:auto_resync_enabled, :inherits_to_descendants, :name]
    defstruct [:auto_resync_enabled, :inherits_to_descendants, :name]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"auto_resync_enabled" => input.auto_resync_enabled, "inherits_to_descendants" => input.inherits_to_descendants, "name" => input.name}
    end
  end


end
