defmodule OriginsSdk.ExpertPages.RestoreExpertPageVersion do
  @moduledoc """
  Input + metadata types for `restore_expert_page_version`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `restore_expert_page_version`."

    @type t :: %__MODULE__{
          version_id: String.t()
        }

    @enforce_keys [:version_id]
    defstruct [:version_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"version_id" => input.version_id}
    end
  end


end
