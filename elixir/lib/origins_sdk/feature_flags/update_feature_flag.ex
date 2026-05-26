defmodule OriginsSdk.FeatureFlags.UpdateFeatureFlag do
  @moduledoc """
  Input + metadata types for `update_feature_flag`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_feature_flag`."

    @type t :: %__MODULE__{
          enabled: boolean()
        }

    @enforce_keys [:enabled]
    defstruct [:enabled]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"enabled" => input.enabled}
    end
  end


end
