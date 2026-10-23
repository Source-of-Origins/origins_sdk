defmodule OriginsSdk.Accounts.GetMasterclassFunnel do
  @moduledoc """
  Input + metadata types for `get_masterclass_funnel`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_masterclass_funnel`."

    @type t :: %__MODULE__{
          from: Date.t(),
          masterclass: String.t(),
          to: Date.t()
        }

    @enforce_keys [:from, :masterclass, :to]
    defstruct [:from, :masterclass, :to]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"from" => input.from, "masterclass" => input.masterclass, "to" => input.to}
    end
  end


end
