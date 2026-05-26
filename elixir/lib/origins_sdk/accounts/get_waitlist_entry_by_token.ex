defmodule OriginsSdk.Accounts.GetWaitlistEntryByToken do
  @moduledoc """
  Input + metadata types for `get_waitlist_entry_by_token`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_waitlist_entry_by_token`."

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
