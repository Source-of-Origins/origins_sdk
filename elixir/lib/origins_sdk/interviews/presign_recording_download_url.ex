defmodule OriginsSdk.Interviews.PresignRecordingDownloadUrl do
  @moduledoc """
  Input + metadata types for `presign_recording_download_url`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `presign_recording_download_url`."

    @type t :: %__MODULE__{
          recording_id: String.t()
        }

    @enforce_keys [:recording_id]
    defstruct [:recording_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"recording_id" => input.recording_id}
    end
  end


end
