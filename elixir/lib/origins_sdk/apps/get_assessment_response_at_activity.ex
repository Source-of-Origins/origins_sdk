defmodule OriginsSdk.Apps.GetAssessmentResponseAtActivity do
  @moduledoc """
  Input + metadata types for `get_assessment_response_at_activity`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_assessment_response_at_activity`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          enrollment_id: String.t(),
          launch_activity_id: String.t()
        }

    @enforce_keys [:app_id, :enrollment_id, :launch_activity_id]
    defstruct [:app_id, :enrollment_id, :launch_activity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "enrollment_id" => input.enrollment_id, "launch_activity_id" => input.launch_activity_id}
    end
  end


end
