defmodule OriginsSdk.Accounts.ListAllUsers do
  @moduledoc """
  Input + metadata types for `list_all_users`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_all_users`."

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
