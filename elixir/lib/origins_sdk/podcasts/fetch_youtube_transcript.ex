defmodule OriginsSdk.Podcasts.FetchYoutubeTranscript do
  @moduledoc """
  Input + metadata types for `fetch_youtube_transcript`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `fetch_youtube_transcript`."

    @type t :: %__MODULE__{
          video_id: String.t()
        }

    @enforce_keys [:video_id]
    defstruct [:video_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"video_id" => input.video_id}
    end
  end


end
