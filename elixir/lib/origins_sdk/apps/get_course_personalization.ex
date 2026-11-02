defmodule OriginsSdk.Apps.GetCoursePersonalization do
  @moduledoc """
  Input + metadata types for `get_course_personalization`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_course_personalization`."

    @type t :: %__MODULE__{
          source_app_id: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:source_app_id, :user_id]
    defstruct [:source_app_id, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"source_app_id" => input.source_app_id, "user_id" => input.user_id}
    end
  end


end
