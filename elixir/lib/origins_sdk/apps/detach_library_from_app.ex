defmodule OriginsSdk.Apps.DetachLibraryFromApp do
  @moduledoc """
  Input + metadata types for `detach_library_from_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `detach_library_from_app`."

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
