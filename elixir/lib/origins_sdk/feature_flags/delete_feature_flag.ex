defmodule OriginsSdk.FeatureFlags.DeleteFeatureFlag do
  @moduledoc """
  Input + metadata types for `delete_feature_flag`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `delete_feature_flag`."

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
