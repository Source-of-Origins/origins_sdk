defmodule OriginsSdk.Apps.MarkBriefingRead do
  @moduledoc """
  Input + metadata types for `mark_briefing_read`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `mark_briefing_read`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          session_id: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:app_id, :session_id, :user_id]
    defstruct [:app_id, :session_id, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "session_id" => input.session_id, "user_id" => input.user_id}
    end
  end


end
