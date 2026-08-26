defmodule OriginsSdk.Apps.GatedCoursePayload do
  @moduledoc """
  Mirror of `Origins.Apps.Course.GatedCoursePayload` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    assessment_launches: list() | nil,
    enrollment: any() | nil,
    gated_course: any(),
    state: list() | nil
    }

  defstruct [
    :assessment_launches,
    :enrollment,
    :gated_course,
    :state
  ]

  @primitive_fields ~w(assessment_launches enrollment gated_course state)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      assessment_launches: map["assessment_launches"],
      enrollment: map["enrollment"],
      gated_course: map["gated_course"],
      state: map["state"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
