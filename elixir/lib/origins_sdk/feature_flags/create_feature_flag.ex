defmodule OriginsSdk.FeatureFlags.CreateFeatureFlag do
  @moduledoc """
  Input + metadata types for `create_feature_flag`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_feature_flag`."

    @type t :: %__MODULE__{
          enabled: boolean(),
          feature_name: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:enabled, :feature_name, :origin_entity_id]
    defstruct [:enabled, :feature_name, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"enabled" => input.enabled, "feature_name" => input.feature_name, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
