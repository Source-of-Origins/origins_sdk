defmodule OriginsSdk.Apps.GatedPersonalizedCourseForUser do
  @moduledoc """
  Input + metadata types for `gated_personalized_course_for_user`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `gated_personalized_course_for_user`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:app_id, :user_id]
    defstruct [:app_id, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "user_id" => input.user_id}
    end
  end


end
