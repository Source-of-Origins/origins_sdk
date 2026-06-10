defmodule OriginsSdk.Apps.CompleteEnrollment do
  @moduledoc """
  Input + metadata types for `complete_enrollment`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `complete_enrollment`."

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
