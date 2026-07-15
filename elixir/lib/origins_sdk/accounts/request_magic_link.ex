defmodule OriginsSdk.Accounts.RequestMagicLink do
  @moduledoc """
  Input + metadata types for `request_magic_link`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `request_magic_link`."

    @type t :: %__MODULE__{
          email: String.t()
        }

    @enforce_keys [:email]
    defstruct [:email]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"email" => input.email}
    end
  end


end
