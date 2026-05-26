defmodule OriginsSdk.Identity.AcceptMembershipInvitation do
  @moduledoc """
  Input + metadata types for `accept_membership_invitation`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `accept_membership_invitation`."

    @type t :: %__MODULE__{
          user_id: String.t()
        }

    @enforce_keys [:user_id]
    defstruct [:user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"user_id" => input.user_id}
    end
  end


end
