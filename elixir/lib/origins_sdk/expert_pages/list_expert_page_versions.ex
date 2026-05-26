defmodule OriginsSdk.ExpertPages.ListExpertPageVersions do
  @moduledoc """
  Input + metadata types for `list_expert_page_versions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_expert_page_versions`."

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
