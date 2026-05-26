defmodule OriginsSdk.Agent.CreateConversation do
  @moduledoc """
  Input + metadata types for `create_conversation`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_conversation`."

    @type t :: %__MODULE__{
          channel: String.t() | nil,
          closed_at: DateTime.t() | nil,
          is_root: boolean() | nil,
          metadata: map() | nil,
          origin_entity_id: String.t(),
          phone_number: String.t() | nil,
          root_conversation_id: String.t() | nil,
          session_id: String.t() | nil,
          sms_opt_in: boolean() | nil,
          status: String.t() | nil,
          user_email: String.t() | nil,
          user_id: String.t() | nil,
          user_name: String.t() | nil
        }

    @enforce_keys [:origin_entity_id]
    defstruct [:channel, :closed_at, :is_root, :metadata, :origin_entity_id, :phone_number, :root_conversation_id, :session_id, :sms_opt_in, :status, :user_email, :user_id, :user_name]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"channel" => input.channel, "closed_at" => input.closed_at, "is_root" => input.is_root, "metadata" => input.metadata, "origin_entity_id" => input.origin_entity_id, "phone_number" => input.phone_number, "root_conversation_id" => input.root_conversation_id, "session_id" => input.session_id, "sms_opt_in" => input.sms_opt_in, "status" => input.status, "user_email" => input.user_email, "user_id" => input.user_id, "user_name" => input.user_name}
    end
  end


end
