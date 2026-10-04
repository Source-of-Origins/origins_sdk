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

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [assessment_launches: [:activity_id, :app_id], enrollment: [:current_phase_id, :current_phase_started_at, :current_session_id, :enrolled_at, :entered_session_ids, :id, :settings, :status, :streak_count, :streak_last_date], gated_course: [{:activities, [{:assessment, [:app]}, :availability, :body, :content, {:contributors, [:avatar_url, :bio, :name, :ref, :role]}, :duration, :icon, :id, :image, :kind, :label, :mode, {:opens, [:after, :any_of, :at_least, :delay, :every]}, :optional, :phase, {:prompts, [:id, :kind, :label, :max, :min, :options, :order, :required]}, :recurrence, :session, :source_course, {:steps, [:body, :content, :duration, :id, :order, {:prompts, [:id, :kind, :label, :max, :min, :options, :order, :required]}, :required, :title]}, :title, {:video, [:caption, :path]}]}, :briefing_enabled, {:config, [:accent, :accent_foreground, :background, :border, :card, :card_foreground, :foreground, :gated, :gated_default_tab, :head, :logo, :name, :primary, :primary_foreground, :purchase_url, :segment, :streaks, :unit_label, :video_accent, :video_captions]}, {:contributors, [:avatar_url, :bio, :name, :ref, :role]}, :outcomes, {:phases, [:description, :id, :title, :weeks]}, {:sessions, [:description, :id, :index, {:opens, [:after, :any_of, :at_least, :delay, :every]}, :optional, :phase_id, :title]}, :source_libraries, {:transitions, [:at, :between, :body, :id, :title]}, :unit_label], state: [:available, :complete, :item_id, :progress, {:unlocks_when, [:activity_ids, :date, :reason, :type]}]]

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
