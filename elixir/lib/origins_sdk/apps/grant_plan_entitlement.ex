defmodule OriginsSdk.Apps.GrantPlanEntitlement do
  @moduledoc """
  Input + metadata types for `grant_plan_entitlement`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `grant_plan_entitlement`."

    @type t :: %__MODULE__{
          plan_id: String.t() | nil,
          scope: any(),
          tier: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:scope, :tier, :user_id]
    defstruct [:plan_id, :scope, :tier, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"plan_id" => input.plan_id, "scope" => input.scope, "tier" => input.tier, "user_id" => input.user_id}
    end
  end


end
