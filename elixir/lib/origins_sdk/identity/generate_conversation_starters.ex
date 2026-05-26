defmodule OriginsSdk.Identity.GenerateConversationStarters do
  @moduledoc """
  Input + metadata types for `generate_conversation_starters`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_conversation_starters`."

    @type t :: %__MODULE__{
          brand_personality: map() | nil,
          config: map() | nil,
          episode_metadata: map() | nil,
          origin_entity_id: String.t() | nil,
          transcript: String.t() | nil
        }

    @enforce_keys []
    defstruct [:brand_personality, :config, :episode_metadata, :origin_entity_id, :transcript]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"brand_personality" => input.brand_personality, "config" => input.config, "episode_metadata" => input.episode_metadata, "origin_entity_id" => input.origin_entity_id, "transcript" => input.transcript}
    end
  end


end
