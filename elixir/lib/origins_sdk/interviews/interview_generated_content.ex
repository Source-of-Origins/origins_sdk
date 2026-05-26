defmodule OriginsSdk.Interviews.InterviewGeneratedContent do
  @moduledoc """
  Mirror of `Origins.Interviews.InterviewGeneratedContent` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    content: String.t(),
    content_type: any(),
    created_at: DateTime.t(),
    id: String.t(),
    interview_session_id: String.t(),
    metadata: map() | nil,
    status: any(),
    title: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :content,
    :content_type,
    :created_at,
    :id,
    :interview_session_id,
    :metadata,
    :status,
    :title,
    :updated_at
  ]

  @primitive_fields ~w(content content_type created_at id interview_session_id metadata status title updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      content: map["content"],
      content_type: map["content_type"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      interview_session_id: map["interview_session_id"],
      metadata: map["metadata"],
      status: map["status"],
      title: map["title"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
