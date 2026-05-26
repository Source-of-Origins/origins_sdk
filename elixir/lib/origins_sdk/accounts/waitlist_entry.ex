defmodule OriginsSdk.Accounts.WaitlistEntry do
  @moduledoc """
  Mirror of `Origins.Accounts.WaitlistEntry` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    approved_by: String.t() | nil,
    company_name: String.t() | nil,
    created_at: DateTime.t(),
    email: String.t(),
    expires_at: DateTime.t() | nil,
    full_name: String.t(),
    id: String.t(),
    interest_areas: list() | nil,
    invitation_token: String.t() | nil,
    invited_at: DateTime.t() | nil,
    message: String.t() | nil,
    metadata: map() | nil,
    role: String.t() | nil,
    source: String.t() | nil,
    status: any(),
    updated_at: DateTime.t()
    }

  defstruct [
    :approved_by,
    :company_name,
    :created_at,
    :email,
    :expires_at,
    :full_name,
    :id,
    :interest_areas,
    :invitation_token,
    :invited_at,
    :message,
    :metadata,
    :role,
    :source,
    :status,
    :updated_at
  ]

  @primitive_fields ~w(approved_by company_name created_at email expires_at full_name id interest_areas invitation_token invited_at message metadata role source status updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      approved_by: map["approved_by"],
      company_name: map["company_name"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      email: map["email"],
      expires_at: OriginsSdk.Internal.decode_datetime(map["expires_at"]),
      full_name: map["full_name"],
      id: map["id"],
      interest_areas: map["interest_areas"],
      invitation_token: map["invitation_token"],
      invited_at: OriginsSdk.Internal.decode_datetime(map["invited_at"]),
      message: map["message"],
      metadata: map["metadata"],
      role: map["role"],
      source: map["source"],
      status: map["status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
