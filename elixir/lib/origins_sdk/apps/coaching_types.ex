defmodule OriginsSdk.Apps.CoachingTypes do
  @moduledoc """
  Input + metadata types for `coaching_types`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `coaching_types`."

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
