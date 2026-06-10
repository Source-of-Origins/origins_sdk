defmodule OriginsSdk.Accounts.Tenant do
  @moduledoc """
  Mirror of `Origins.Accounts.Tenant` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    archived_at: DateTime.t() | nil,
    created_at: DateTime.t(),
    id: String.t(),
    name: String.t(),
    root_origin_entity_id: String.t() | nil,
    slug: String.t(),
    status: any(),
    updated_at: DateTime.t()
    }

  defstruct [
    :archived_at,
    :created_at,
    :id,
    :name,
    :root_origin_entity_id,
    :slug,
    :status,
    :updated_at
  ]

  @primitive_fields ~w(archived_at created_at id name root_origin_entity_id slug status updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      archived_at: OriginsSdk.Internal.decode_datetime(map["archived_at"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      name: map["name"],
      root_origin_entity_id: map["root_origin_entity_id"],
      slug: map["slug"],
      status: map["status"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
