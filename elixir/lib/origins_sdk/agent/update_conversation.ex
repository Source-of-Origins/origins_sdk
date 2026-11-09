defmodule OriginsSdk.Agent.UpdateConversation do
  @moduledoc """
  Input + metadata types for `update_conversation`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update_conversation`."

    @type t :: %__MODULE__{
          closed_at: DateTime.t() | nil,
          metadata: map() | nil,
          sms_opt_in: boolean() | nil,
          status: String.t() | nil
        }

    @enforce_keys []
    defstruct [:closed_at, :metadata, :sms_opt_in, :status]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"closed_at" => input.closed_at, "metadata" => input.metadata, "sms_opt_in" => input.sms_opt_in, "status" => input.status}
    end
  end


end
