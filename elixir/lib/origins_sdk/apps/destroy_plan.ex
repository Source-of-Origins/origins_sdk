defmodule OriginsSdk.Apps.DestroyPlan do
  @moduledoc """
  Input + metadata types for `destroy_plan`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `destroy_plan`."

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
