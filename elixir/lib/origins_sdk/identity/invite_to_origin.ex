defmodule OriginsSdk.Identity.InviteToOrigin do
  @moduledoc """
  Input + metadata types for `invite_to_origin`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `invite_to_origin`."

    @type t :: %__MODULE__{
          invited_email: String.t() | nil,
          origin_entity_id: String.t(),
          role: any()
        }

    @enforce_keys [:origin_entity_id, :role]
    defstruct [:invited_email, :origin_entity_id, :role]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"invited_email" => input.invited_email, "origin_entity_id" => input.origin_entity_id, "role" => input.role}
    end
  end


end
