defmodule OriginsSdk.Interviews.FinishInterviewSession do
  @moduledoc """
  Input + metadata types for `finish_interview_session`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `finish_interview_session`."

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
