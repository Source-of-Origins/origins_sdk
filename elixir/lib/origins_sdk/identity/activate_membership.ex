defmodule OriginsSdk.Identity.ActivateMembership do
  @moduledoc """
  Input + metadata types for `activate_membership`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `activate_membership`."

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
