defmodule OriginsSdk.Accounts.RecordConsent do
  @moduledoc """
  Input + metadata types for `record_consent`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `record_consent`."

    @type t :: %__MODULE__{
          granted: boolean(),
          ip: String.t() | nil,
          kind: any(),
          method: any(),
          policy_version: String.t(),
          text_shown: String.t(),
          user_agent: String.t() | nil
        }

    @enforce_keys [:granted, :kind, :method, :policy_version, :text_shown]
    defstruct [:granted, :ip, :kind, :method, :policy_version, :text_shown, :user_agent]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"granted" => input.granted, "ip" => input.ip, "kind" => input.kind, "method" => input.method, "policy_version" => input.policy_version, "text_shown" => input.text_shown, "user_agent" => input.user_agent}
    end
  end


end
