defmodule OriginsSdk.Interviews.GetInterviewSession do
  @moduledoc """
  Input + metadata types for `get_interview_session`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_interview_session`."

    @type t :: %__MODULE__{
          id: String.t()
        }

    @enforce_keys [:id]
    defstruct [:id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"id" => input.id}
    end
  end


end
