defmodule OriginsSdk.Accounts.ListConsentsForKind do
  @moduledoc """
  Input + metadata types for `list_consents_for_kind`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_consents_for_kind`."

    @type t :: %__MODULE__{
          custom_name: String.t() | nil,
          kind: any()
        }

    @enforce_keys [:kind]
    defstruct [:custom_name, :kind]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"custom_name" => input.custom_name, "kind" => input.kind}
    end
  end


end
