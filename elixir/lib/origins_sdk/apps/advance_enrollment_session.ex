defmodule OriginsSdk.Apps.AdvanceEnrollmentSession do
  @moduledoc """
  Input + metadata types for `advance_enrollment_session`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `advance_enrollment_session`."

    @type t :: %__MODULE__{
          phase_id: String.t() | nil,
          session_id: String.t() | nil
        }

    @enforce_keys []
    defstruct [:phase_id, :session_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"phase_id" => input.phase_id, "session_id" => input.session_id}
    end
  end


end
