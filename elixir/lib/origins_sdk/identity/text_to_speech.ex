defmodule OriginsSdk.Identity.TextToSpeech do
  @moduledoc """
  Input + metadata types for `text_to_speech`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `text_to_speech`."

    @type t :: %__MODULE__{
          output_format: String.t() | nil,
          settings: map() | nil,
          text: String.t(),
          voice_id: String.t() | nil
        }

    @enforce_keys [:text]
    defstruct [:output_format, :settings, :text, :voice_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"output_format" => input.output_format, "settings" => input.settings, "text" => input.text, "voice_id" => input.voice_id}
    end
  end


end
