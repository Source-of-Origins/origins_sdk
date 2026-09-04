defmodule OriginsSdk.Accounts.ListConsentHistory do
  @moduledoc """
  Input + metadata types for `list_consent_history`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_consent_history`."

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
