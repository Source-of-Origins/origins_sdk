defmodule OriginsSdk.Apps.CourseActivityCompletion do
  @moduledoc """
  Mirror of `Origins.Apps.CourseActivityCompletion` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    activity_id: String.t(),
    attachments: list() | nil,
    completed_date: Date.t(),
    created_at: DateTime.t(),
    duration_seconds: integer() | nil,
    enrollment_id: String.t(),
    id: String.t(),
    notes: String.t() | nil,
    responses: map() | nil,
    step_id: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :activity_id,
    :attachments,
    :completed_date,
    :created_at,
    :duration_seconds,
    :enrollment_id,
    :id,
    :notes,
    :responses,
    :step_id,
    :updated_at
  ]

  @primitive_fields ~w(activity_id attachments completed_date created_at duration_seconds enrollment_id id notes responses step_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      activity_id: map["activity_id"],
      attachments: map["attachments"],
      completed_date: OriginsSdk.Internal.decode_date(map["completed_date"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      duration_seconds: map["duration_seconds"],
      enrollment_id: map["enrollment_id"],
      id: map["id"],
      notes: map["notes"],
      responses: map["responses"],
      step_id: map["step_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
