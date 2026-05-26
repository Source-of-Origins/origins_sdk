defmodule OriginsSdk.Interviews.UpdateInterviewSession do
  @moduledoc """
  Input + metadata types for `update_interview_session`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_interview_session`."

    @type t :: %__MODULE__{
          channel: any(),
          key_quotes: list() | nil,
          metadata: map() | nil,
          origin_entity_id: String.t(),
          session_name: String.t() | nil,
          status: any(),
          summary: String.t() | nil,
          topics: list() | nil
        }

    @enforce_keys [:channel, :origin_entity_id, :status]
    defstruct [:channel, :key_quotes, :metadata, :origin_entity_id, :session_name, :status, :summary, :topics]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"channel" => input.channel, "key_quotes" => input.key_quotes, "metadata" => input.metadata, "origin_entity_id" => input.origin_entity_id, "session_name" => input.session_name, "status" => input.status, "summary" => input.summary, "topics" => input.topics}
    end
  end


end
