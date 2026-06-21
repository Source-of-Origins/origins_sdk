defmodule OriginsSdk.Apps.EnrollmentCompletions do
  @moduledoc """
  Mirror of `Origins.Apps.CourseEnrollment.EnrollmentCompletions` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    activity_completions: list() | nil,
    current_phase_id: String.t() | nil,
    current_session_id: String.t() | nil,
    id: String.t(),
    status: atom()
    }

  defstruct [
    :activity_completions,
    :current_phase_id,
    :current_session_id,
    :id,
    :status
  ]

  @primitive_fields ~w(activity_completions current_phase_id current_session_id id status)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      activity_completions: map["activity_completions"],
      current_phase_id: map["current_phase_id"],
      current_session_id: map["current_session_id"],
      id: map["id"],
      status: OriginsSdk.Internal.decode_atom(map["status"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
