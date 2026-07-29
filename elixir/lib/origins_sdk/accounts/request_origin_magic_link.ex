defmodule OriginsSdk.Accounts.RequestOriginMagicLink do
  @moduledoc """
  Input + metadata types for `request_origin_magic_link`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `request_origin_magic_link`."

    @type t :: %__MODULE__{
          email: String.t(),
          origin_entity_id: String.t(),
          return_to: String.t() | nil
        }

    @enforce_keys [:email, :origin_entity_id]
    defstruct [:email, :origin_entity_id, :return_to]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"email" => input.email, "origin_entity_id" => input.origin_entity_id, "return_to" => input.return_to}
    end
  end


end
