defmodule OriginsSdk.Apps.CompleteActivityStep do
  @moduledoc """
  Input + metadata types for `complete_activity_step`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `complete_activity_step`."

    @type t :: %__MODULE__{
          activity_id: String.t(),
          completed_date: Date.t(),
          duration_seconds: integer() | nil,
          enrollment_id: String.t(),
          notes: String.t() | nil,
          step_id: String.t() | nil
        }

    @enforce_keys [:activity_id, :completed_date, :enrollment_id]
    defstruct [:activity_id, :completed_date, :duration_seconds, :enrollment_id, :notes, :step_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"activity_id" => input.activity_id, "completed_date" => input.completed_date, "duration_seconds" => input.duration_seconds, "enrollment_id" => input.enrollment_id, "notes" => input.notes, "step_id" => input.step_id}
    end
  end


end
