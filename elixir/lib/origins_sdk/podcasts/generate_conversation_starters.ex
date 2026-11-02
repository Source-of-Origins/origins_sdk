defmodule OriginsSdk.Podcasts.GenerateConversationStarters do
  @moduledoc """
  Input + metadata types for `generate_conversation_starters`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `generate_conversation_starters`."

    @type t :: %__MODULE__{
          config: map(),
          episode_metadata: map() | nil,
          transcript: String.t()
        }

    @enforce_keys [:config, :transcript]
    defstruct [:config, :episode_metadata, :transcript]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"config" => input.config, "episode_metadata" => input.episode_metadata, "transcript" => input.transcript}
    end
  end


end
