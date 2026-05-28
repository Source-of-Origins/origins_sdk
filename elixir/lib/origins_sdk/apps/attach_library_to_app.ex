defmodule OriginsSdk.Apps.AttachLibraryToApp do
  @moduledoc """
  Input + metadata types for `attach_library_to_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `attach_library_to_app`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          library_id: String.t()
        }

    @enforce_keys [:app_id, :library_id]
    defstruct [:app_id, :library_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "library_id" => input.library_id}
    end
  end


end
