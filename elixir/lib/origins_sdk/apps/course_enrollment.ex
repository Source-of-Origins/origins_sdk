defmodule OriginsSdk.Apps.CourseEnrollment do
  @moduledoc """
  Mirror of `Origins.Apps.CourseEnrollment` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    app_id: String.t(),
    character_id: String.t(),
    created_at: DateTime.t(),
    current_phase_id: String.t() | nil,
    current_session_id: String.t() | nil,
    enrolled_at: DateTime.t() | nil,
    id: String.t(),
    reactivated_at: DateTime.t() | nil,
    settings: map() | nil,
    status: any(),
    streak_count: integer() | nil,
    streak_last_date: Date.t() | nil,
    updated_at: DateTime.t(),
    user_id: String.t()
    }

  defstruct [
    :app_id,
    :character_id,
    :created_at,
    :current_phase_id,
    :current_session_id,
    :enrolled_at,
    :id,
    :reactivated_at,
    :settings,
    :status,
    :streak_count,
    :streak_last_date,
    :updated_at,
    :user_id
  ]

  @primitive_fields ~w(app_id character_id created_at current_phase_id current_session_id enrolled_at id reactivated_at settings status streak_count streak_last_date updated_at user_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      app_id: map["app_id"],
      character_id: map["character_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      current_phase_id: map["current_phase_id"],
      current_session_id: map["current_session_id"],
      enrolled_at: OriginsSdk.Internal.decode_datetime(map["enrolled_at"]),
      id: map["id"],
      reactivated_at: OriginsSdk.Internal.decode_datetime(map["reactivated_at"]),
      settings: map["settings"],
      status: map["status"],
      streak_count: map["streak_count"],
      streak_last_date: OriginsSdk.Internal.decode_date(map["streak_last_date"]),
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_id: map["user_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
