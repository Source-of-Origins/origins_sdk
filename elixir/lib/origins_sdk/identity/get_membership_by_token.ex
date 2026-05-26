defmodule OriginsSdk.Identity.GetMembershipByToken do
  @moduledoc """
  Input + metadata types for `get_membership_by_token`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_membership_by_token`."

    @type t :: %__MODULE__{
          invitation_token: String.t()
        }

    @enforce_keys [:invitation_token]
    defstruct [:invitation_token]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"invitation_token" => input.invitation_token}
    end
  end


end
