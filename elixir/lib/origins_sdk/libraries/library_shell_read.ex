defmodule OriginsSdk.Libraries.LibraryShellRead do
  @moduledoc """
  Input + metadata types for `library_shell_read`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `library_shell_read`."

    @type t :: %__MODULE__{
          library_ids: list(),
          path: String.t()
        }

    @enforce_keys [:library_ids, :path]
    defstruct [:library_ids, :path]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"library_ids" => input.library_ids, "path" => input.path}
    end
  end


end
