defmodule OriginsSdk.Apps.ResumeEnrollment do
  @moduledoc """
  Input + metadata types for `resume_enrollment`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `resume_enrollment`."

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
