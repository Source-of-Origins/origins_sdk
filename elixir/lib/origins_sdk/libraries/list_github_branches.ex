defmodule OriginsSdk.Libraries.ListGithubBranches do
  @moduledoc """
  Input + metadata types for `list_github_branches`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_github_branches`."

    @type t :: %__MODULE__{
          connection_id: String.t(),
          owner: String.t(),
          repo: String.t()
        }

    @enforce_keys [:connection_id, :owner, :repo]
    defstruct [:connection_id, :owner, :repo]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"connection_id" => input.connection_id, "owner" => input.owner, "repo" => input.repo}
    end
  end


end
