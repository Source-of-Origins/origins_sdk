defmodule OriginsSdk.Identity.UpdateOriginEntityProfileConfig do
  @moduledoc """
  Input + metadata types for `update_origin_entity_profile_config`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_origin_entity_profile_config`."

    @type t :: %__MODULE__{
          appearance_config: any() | nil,
          brand_conversation_config: any() | nil,
          is_featured: boolean() | nil,
          is_public: boolean() | nil,
          public_profile_config: any() | nil
        }

    @enforce_keys []
    defstruct [:appearance_config, :brand_conversation_config, :is_featured, :is_public, :public_profile_config]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"appearance_config" => input.appearance_config, "brand_conversation_config" => input.brand_conversation_config, "is_featured" => input.is_featured, "is_public" => input.is_public, "public_profile_config" => input.public_profile_config}
    end
  end


end
