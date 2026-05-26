defmodule OriginsSdk.Podcasts.FetchYoutubeSingleVideo do
  @moduledoc """
  Input + metadata types for `fetch_youtube_single_video`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `fetch_youtube_single_video`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t(),
          video_id: String.t()
        }

    @enforce_keys [:origin_entity_id, :video_id]
    defstruct [:origin_entity_id, :video_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "video_id" => input.video_id}
    end
  end


end
