defmodule OriginsSdk.Accounts.GetCurrentUser do
  @moduledoc """
  Input + metadata types for `get_current_user`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_current_user`."

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
