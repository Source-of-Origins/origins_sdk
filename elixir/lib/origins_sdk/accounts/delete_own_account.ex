defmodule OriginsSdk.Accounts.DeleteOwnAccount do
  @moduledoc """
  Input + metadata types for `delete_own_account`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `delete_own_account`."

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
