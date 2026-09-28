defmodule OriginsSdk.Accounts.ListConsentsForKind do
  @moduledoc """
  Input + metadata types for `list_consents_for_kind`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_consents_for_kind`."

    @type t :: %__MODULE__{
          custom_name: String.t() | nil,
          from: DateTime.t() | nil,
          kind: any(),
          to: DateTime.t() | nil
        }

    @enforce_keys [:kind]
    defstruct [:custom_name, :from, :kind, :to]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"custom_name" => input.custom_name, "from" => input.from, "kind" => input.kind, "to" => input.to}
    end
  end


end
