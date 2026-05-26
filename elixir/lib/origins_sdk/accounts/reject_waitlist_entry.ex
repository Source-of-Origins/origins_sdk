defmodule OriginsSdk.Accounts.RejectWaitlistEntry do
  @moduledoc """
  Input + metadata types for `reject_waitlist_entry`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `reject_waitlist_entry`."

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
