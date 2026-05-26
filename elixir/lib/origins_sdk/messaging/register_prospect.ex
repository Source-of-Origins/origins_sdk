defmodule OriginsSdk.Messaging.RegisterProspect do
  @moduledoc """
  Input + metadata types for `register_prospect`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `register_prospect`."

    @type t :: %__MODULE__{
          notes: String.t() | nil,
          origin_entity_id: String.t(),
          prospect_labels: map(),
          prospect_phones: list()
        }

    @enforce_keys [:origin_entity_id, :prospect_labels, :prospect_phones]
    defstruct [:notes, :origin_entity_id, :prospect_labels, :prospect_phones]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"notes" => input.notes, "origin_entity_id" => input.origin_entity_id, "prospect_labels" => input.prospect_labels, "prospect_phones" => input.prospect_phones}
    end
  end


end
