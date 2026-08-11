defmodule OriginsSdk.Apps.ListAssessmentResponsesForEnrollment do
  @moduledoc """
  Input + metadata types for `list_assessment_responses_for_enrollment`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_assessment_responses_for_enrollment`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          enrollment_id: String.t()
        }

    @enforce_keys [:app_id, :enrollment_id]
    defstruct [:app_id, :enrollment_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "enrollment_id" => input.enrollment_id}
    end
  end


end
