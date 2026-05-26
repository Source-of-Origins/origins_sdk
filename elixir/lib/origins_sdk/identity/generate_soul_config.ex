defmodule OriginsSdk.Identity.GenerateSoulConfig do
  @moduledoc """
  Input + metadata types for `generate_soul_config`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_soul_config`."

    @type t :: %__MODULE__{
          additional_context: String.t() | nil,
          config_type: String.t(),
          origin_entity_id: String.t() | nil,
          selected_objectives: list() | nil
        }

    @enforce_keys [:config_type]
    defstruct [:additional_context, :config_type, :origin_entity_id, :selected_objectives]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"additional_context" => input.additional_context, "config_type" => input.config_type, "origin_entity_id" => input.origin_entity_id, "selected_objectives" => input.selected_objectives}
    end
  end


end
