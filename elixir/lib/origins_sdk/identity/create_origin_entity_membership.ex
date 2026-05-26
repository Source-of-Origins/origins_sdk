defmodule OriginsSdk.Identity.CreateOriginEntityMembership do
  @moduledoc """
  Input + metadata types for `create_origin_entity_membership`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_origin_entity_membership`."

    @type t :: %__MODULE__{
          accepted_at: DateTime.t() | nil,
          expires_at: DateTime.t() | nil,
          invitation_token: String.t() | nil,
          invited_by: String.t() | nil,
          invited_email: String.t() | nil,
          origin_entity_id: String.t(),
          role: any(),
          status: any(),
          user_id: String.t() | nil
        }

    @enforce_keys [:origin_entity_id, :role, :status]
    defstruct [:accepted_at, :expires_at, :invitation_token, :invited_by, :invited_email, :origin_entity_id, :role, :status, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"accepted_at" => input.accepted_at, "expires_at" => input.expires_at, "invitation_token" => input.invitation_token, "invited_by" => input.invited_by, "invited_email" => input.invited_email, "origin_entity_id" => input.origin_entity_id, "role" => input.role, "status" => input.status, "user_id" => input.user_id}
    end
  end


end
