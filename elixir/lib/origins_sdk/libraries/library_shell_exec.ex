defmodule OriginsSdk.Libraries.LibraryShellExec do
  @moduledoc """
  Input + metadata types for `library_shell_exec`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `library_shell_exec`."

    @type t :: %__MODULE__{
          command: String.t(),
          library_ids: list()
        }

    @enforce_keys [:command, :library_ids]
    defstruct [:command, :library_ids]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"command" => input.command, "library_ids" => input.library_ids}
    end
  end


end
