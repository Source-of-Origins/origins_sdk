defmodule OriginsSdk.Interviews.InterviewRecording do
  @moduledoc """
  Mirror of `Origins.Interviews.InterviewRecording` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    audio_codec: String.t() | nil,
    created_at: DateTime.t(),
    duration_ms: integer() | nil,
    error_message: String.t() | nil,
    file_name: String.t(),
    file_size: integer() | nil,
    height: integer() | nil,
    id: String.t(),
    interview_session_id: String.t(),
    metadata: map() | nil,
    recording_type: any(),
    status: any(),
    storage_key: String.t(),
    updated_at: DateTime.t(),
    video_codec: String.t() | nil,
    width: integer() | nil
    }

  defstruct [
    :audio_codec,
    :created_at,
    :duration_ms,
    :error_message,
    :file_name,
    :file_size,
    :height,
    :id,
    :interview_session_id,
    :metadata,
    :recording_type,
    :status,
    :storage_key,
    :updated_at,
    :video_codec,
    :width
  ]

  @primitive_fields ~w(audio_codec created_at duration_ms error_message file_name file_size height id interview_session_id metadata recording_type status storage_key updated_at video_codec width)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      audio_codec: map["audio_codec"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      duration_ms: map["duration_ms"],
      error_message: map["error_message"],
      file_name: map["file_name"],
      file_size: map["file_size"],
      height: map["height"],
      id: map["id"],
      interview_session_id: map["interview_session_id"],
      metadata: map["metadata"],
      recording_type: map["recording_type"],
      status: map["status"],
      storage_key: map["storage_key"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      video_codec: map["video_codec"],
      width: map["width"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
