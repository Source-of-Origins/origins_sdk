defmodule OriginsSdk.Apps.GetAssessmentGraph do
  @moduledoc """
  Input + metadata types for `get_assessment_graph`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_assessment_graph`."

    @type t :: %__MODULE__{
          app_id: String.t()
        }

    @enforce_keys [:app_id]
    defstruct [:app_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id}
    end
  end


end
