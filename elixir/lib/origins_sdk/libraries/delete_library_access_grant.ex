defmodule OriginsSdk.Libraries.DeleteLibraryAccessGrant do
  @moduledoc """
  Input + metadata types for `delete_library_access_grant`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `delete_library_access_grant`."

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
