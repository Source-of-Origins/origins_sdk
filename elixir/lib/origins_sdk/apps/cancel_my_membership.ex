defmodule OriginsSdk.Apps.CancelMyMembership do
  @moduledoc """
  Input + metadata types for `cancel_my_membership`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `cancel_my_membership`."

    @type t :: %__MODULE__{
          entitlement_id: String.t()
        }

    @enforce_keys [:entitlement_id]
    defstruct [:entitlement_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"entitlement_id" => input.entitlement_id}
    end
  end


end
