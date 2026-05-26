defmodule OriginsSdk.ExpertPages.AttachLibraryToExpertPage do
  @moduledoc """
  Input + metadata types for `attach_library_to_expert_page`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `attach_library_to_expert_page`."

    @type t :: %__MODULE__{
          expert_page_id: String.t(),
          library_id: String.t()
        }

    @enforce_keys [:expert_page_id, :library_id]
    defstruct [:expert_page_id, :library_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"expert_page_id" => input.expert_page_id, "library_id" => input.library_id}
    end
  end


end
