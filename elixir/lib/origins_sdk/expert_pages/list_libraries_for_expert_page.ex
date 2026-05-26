defmodule OriginsSdk.ExpertPages.ListLibrariesForExpertPage do
  @moduledoc """
  Input + metadata types for `list_libraries_for_expert_page`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_libraries_for_expert_page`."

    @type t :: %__MODULE__{
          expert_page_id: String.t()
        }

    @enforce_keys [:expert_page_id]
    defstruct [:expert_page_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"expert_page_id" => input.expert_page_id}
    end
  end


end
