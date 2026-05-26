defmodule OriginsSdk.Libraries.ListGithubRepositories do
  @moduledoc """
  Input + metadata types for `list_github_repositories`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_github_repositories`."

    @type t :: %__MODULE__{
          connection_id: String.t()
        }

    @enforce_keys [:connection_id]
    defstruct [:connection_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"connection_id" => input.connection_id}
    end
  end


end
