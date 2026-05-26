defmodule OriginsSdk.Identity.CloneCartesiaVoice do
  @moduledoc """
  Input + metadata types for `clone_cartesia_voice`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `clone_cartesia_voice`."

    @type t :: %__MODULE__{
          audio_file_base64: String.t(),
          audio_format: String.t(),
          description: String.t() | nil,
          language: String.t(),
          name: String.t()
        }

    @enforce_keys [:audio_file_base64, :audio_format, :language, :name]
    defstruct [:audio_file_base64, :audio_format, :description, :language, :name]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"audio_file_base64" => input.audio_file_base64, "audio_format" => input.audio_format, "description" => input.description, "language" => input.language, "name" => input.name}
    end
  end


end
