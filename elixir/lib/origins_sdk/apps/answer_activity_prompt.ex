defmodule OriginsSdk.Apps.AnswerActivityPrompt do
  @moduledoc """
  Input + metadata types for `answer_activity_prompt`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `answer_activity_prompt`."

    @type t :: %__MODULE__{
          activity_id: String.t(),
          completed_date: Date.t(),
          enrollment_id: String.t(),
          prompt_id: String.t(),
          step_id: String.t() | nil,
          value: String.t() | nil
        }

    @enforce_keys [:activity_id, :completed_date, :enrollment_id, :prompt_id]
    defstruct [:activity_id, :completed_date, :enrollment_id, :prompt_id, :step_id, :value]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"activity_id" => input.activity_id, "completed_date" => input.completed_date, "enrollment_id" => input.enrollment_id, "prompt_id" => input.prompt_id, "step_id" => input.step_id, "value" => input.value}
    end
  end


end
