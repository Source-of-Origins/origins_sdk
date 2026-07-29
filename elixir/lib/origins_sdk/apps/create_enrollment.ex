defmodule OriginsSdk.Apps.CreateEnrollment do
  @moduledoc """
  Input + metadata types for `create_enrollment`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_enrollment`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          character_id: String.t(),
          current_personalization_id: String.t() | nil,
          current_phase_id: String.t() | nil,
          current_session_id: String.t() | nil,
          enrolled_at: DateTime.t() | nil,
          settings: map() | nil,
          streak_count: integer() | nil,
          streak_last_date: Date.t() | nil,
          timezone: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:app_id, :character_id, :timezone, :user_id]
    defstruct [:app_id, :character_id, :current_personalization_id, :current_phase_id, :current_session_id, :enrolled_at, :settings, :streak_count, :streak_last_date, :timezone, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "character_id" => input.character_id, "current_personalization_id" => input.current_personalization_id, "current_phase_id" => input.current_phase_id, "current_session_id" => input.current_session_id, "enrolled_at" => input.enrolled_at, "settings" => input.settings, "streak_count" => input.streak_count, "streak_last_date" => input.streak_last_date, "timezone" => input.timezone, "user_id" => input.user_id}
    end
  end


end
