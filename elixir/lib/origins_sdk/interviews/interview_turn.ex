defmodule OriginsSdk.Interviews.InterviewTurn do
  @moduledoc """
  Mirror of `Origins.Interviews.InterviewTurn` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    answer: String.t() | nil,
    created_at: DateTime.t(),
    id: String.t(),
    interview_session_id: String.t(),
    metadata: map() | nil,
    question: String.t(),
    turn_number: integer(),
    updated_at: DateTime.t()
    }

  defstruct [
    :answer,
    :created_at,
    :id,
    :interview_session_id,
    :metadata,
    :question,
    :turn_number,
    :updated_at
  ]

  @primitive_fields ~w(answer created_at id interview_session_id metadata question turn_number updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      answer: map["answer"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      interview_session_id: map["interview_session_id"],
      metadata: map["metadata"],
      question: map["question"],
      turn_number: map["turn_number"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
