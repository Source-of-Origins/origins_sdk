defmodule OriginsSdk.Identity.SuspendMembership do
  @moduledoc """
  Input + metadata types for `suspend_membership`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `suspend_membership`."

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
