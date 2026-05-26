defmodule OriginsSdk.Identity.GenerateProfileDescription do
  @moduledoc """
  Input + metadata types for `generate_profile_description`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_profile_description`."

    @type t :: %__MODULE__{
          current_description: String.t() | nil,
          mode: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:mode, :origin_entity_id]
    defstruct [:current_description, :mode, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"current_description" => input.current_description, "mode" => input.mode, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
