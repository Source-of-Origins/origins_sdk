defmodule OriginsSdk.Apps.CompleteAssessment do
  @moduledoc """
  Input + metadata types for `complete_assessment`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `complete_assessment`."

    @type t :: %__MODULE__{
          completed_at: DateTime.t() | nil,
          email: String.t() | nil
        }

    @enforce_keys []
    defstruct [:completed_at, :email]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"completed_at" => input.completed_at, "email" => input.email}
    end
  end


end
