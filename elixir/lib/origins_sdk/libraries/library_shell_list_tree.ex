defmodule OriginsSdk.Libraries.LibraryShellListTree do
  @moduledoc """
  Input + metadata types for `library_shell_list_tree`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `library_shell_list_tree`."

    @type t :: %__MODULE__{
          library_ids: list()
        }

    @enforce_keys [:library_ids]
    defstruct [:library_ids]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"library_ids" => input.library_ids}
    end
  end


end
