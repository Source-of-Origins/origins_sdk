defmodule OriginsSdk.Identity.SetDefaultAgent do
  @moduledoc """
  Input + metadata types for `set_default_agent`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `set_default_agent`."

    @type t :: %__MODULE__{
          default_agent_id: String.t()
        }

    @enforce_keys [:default_agent_id]
    defstruct [:default_agent_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"default_agent_id" => input.default_agent_id}
    end
  end


end
