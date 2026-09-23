defmodule OriginsSdk.Apps.MyMembershipCancellation do
  @moduledoc """
  Input + metadata types for `my_membership_cancellation`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `my_membership_cancellation`."

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
