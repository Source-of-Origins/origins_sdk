defmodule OriginsSdk.Identity.SpeechToText do
  @moduledoc """
  Input + metadata types for `speech_to_text`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `speech_to_text`."

    @type t :: %__MODULE__{
          audio_data: String.t()
        }

    @enforce_keys [:audio_data]
    defstruct [:audio_data]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"audio_data" => input.audio_data}
    end
  end


end
