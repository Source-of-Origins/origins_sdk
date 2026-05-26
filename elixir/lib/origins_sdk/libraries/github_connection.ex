defmodule OriginsSdk.Libraries.GithubConnection do
  @moduledoc """
  Mirror of `Origins.Libraries.GithubConnection` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    connected_by_user_id: String.t() | nil,
    created_at: DateTime.t(),
    entity_profile_id: String.t(),
    github_account_login: String.t(),
    github_account_type: any(),
    id: String.t(),
    installation_id: String.t(),
    status: any() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :connected_by_user_id,
    :created_at,
    :entity_profile_id,
    :github_account_login,
    :github_account_type,
    :id,
    :installation_id,
    :status,
    :updated_at
  ]

  @primitive_fields ~w(connected_by_user_id created_at entity_profile_id github_account_login github_account_type id installation_id status updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      connected_by_user_id: map["connected_by_user_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      entity_profile_id: map["entity_profile_id"],
      github_account_login: map["github_account_login"],
      github_account_type: map["github_account_type"],
      id: map["id"],
      installation_id: map["installation_id"],
      status: map["status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
