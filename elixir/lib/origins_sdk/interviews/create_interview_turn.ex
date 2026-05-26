defmodule OriginsSdk.Interviews.CreateInterviewTurn do
  @moduledoc """
  Input + metadata types for `create_interview_turn`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_interview_turn`."

    @type t :: %__MODULE__{
          answer: String.t() | nil,
          interview_session_id: String.t(),
          metadata: map() | nil,
          question: String.t(),
          turn_number: integer()
        }

    @enforce_keys [:interview_session_id, :question, :turn_number]
    defstruct [:answer, :interview_session_id, :metadata, :question, :turn_number]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"answer" => input.answer, "interview_session_id" => input.interview_session_id, "metadata" => input.metadata, "question" => input.question, "turn_number" => input.turn_number}
    end
  end


end
