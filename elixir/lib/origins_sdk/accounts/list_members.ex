defmodule OriginsSdk.Accounts.ListMembers do
  @moduledoc """
  Input + metadata types for `list_members`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_members`."

    @type t :: %__MODULE__{
          app_id: String.t() | nil,
          flagged: boolean() | nil,
          plan_id: String.t() | nil,
          search: String.t() | nil,
          statuses: list() | nil
        }

    @enforce_keys []
    defstruct [:app_id, :flagged, :plan_id, :search, :statuses]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "flagged" => input.flagged, "plan_id" => input.plan_id, "search" => input.search, "statuses" => input.statuses}
    end
  end


end
