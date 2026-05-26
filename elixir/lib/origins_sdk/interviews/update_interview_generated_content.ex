defmodule OriginsSdk.Interviews.UpdateInterviewGeneratedContent do
  @moduledoc """
  Input + metadata types for `update_interview_generated_content`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_interview_generated_content`."

    @type t :: %__MODULE__{
          content: String.t(),
          content_type: any(),
          interview_session_id: String.t(),
          metadata: map() | nil,
          status: any(),
          title: String.t() | nil
        }

    @enforce_keys [:content, :content_type, :interview_session_id, :status]
    defstruct [:content, :content_type, :interview_session_id, :metadata, :status, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"content" => input.content, "content_type" => input.content_type, "interview_session_id" => input.interview_session_id, "metadata" => input.metadata, "status" => input.status, "title" => input.title}
    end
  end


end
