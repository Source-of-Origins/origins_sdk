defmodule OriginsSdk.Agent.CountUserMessages do
  @moduledoc """
  Input + metadata types for `count_user_messages`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `count_user_messages`."

    @type t :: %__MODULE__{
          from: DateTime.t(),
          origin_entity_id: String.t(),
          to: DateTime.t(),
          user_id: String.t()
        }

    @enforce_keys [:from, :origin_entity_id, :to, :user_id]
    defstruct [:from, :origin_entity_id, :to, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"from" => input.from, "origin_entity_id" => input.origin_entity_id, "to" => input.to, "user_id" => input.user_id}
    end
  end


end
