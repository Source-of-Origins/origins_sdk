defmodule OriginsSdk.Feedback.UpdateFeedback do
  @moduledoc """
  Input + metadata types for `update_feedback`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_feedback`."

    @type t :: %__MODULE__{
          admin_notes: String.t() | nil,
          context_name: String.t() | nil,
          context_type: String.t() | nil,
          feedback_type: String.t(),
          message: String.t(),
          origin_entity_id: String.t() | nil,
          resolved_at: DateTime.t() | nil,
          screenshot_url: String.t() | nil,
          status: String.t(),
          subject: String.t(),
          user_email: String.t() | nil,
          user_name: String.t() | nil
        }

    @enforce_keys [:feedback_type, :message, :status, :subject]
    defstruct [:admin_notes, :context_name, :context_type, :feedback_type, :message, :origin_entity_id, :resolved_at, :screenshot_url, :status, :subject, :user_email, :user_name]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"admin_notes" => input.admin_notes, "context_name" => input.context_name, "context_type" => input.context_type, "feedback_type" => input.feedback_type, "message" => input.message, "origin_entity_id" => input.origin_entity_id, "resolved_at" => input.resolved_at, "screenshot_url" => input.screenshot_url, "status" => input.status, "subject" => input.subject, "user_email" => input.user_email, "user_name" => input.user_name}
    end
  end


end
