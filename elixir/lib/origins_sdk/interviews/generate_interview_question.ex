defmodule OriginsSdk.Interviews.GenerateInterviewQuestion do
  @moduledoc """
  Input + metadata types for `generate_interview_question`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_interview_question`."

    @type t :: %__MODULE__{
          session_id: String.t()
        }

    @enforce_keys [:session_id]
    defstruct [:session_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"session_id" => input.session_id}
    end
  end


end
