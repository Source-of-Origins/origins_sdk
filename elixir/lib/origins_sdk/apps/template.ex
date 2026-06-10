defmodule OriginsSdk.Apps.Template do
  @moduledoc """
  Mirror of `Origins.Apps.Template` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    app_type: String.t(),
    created_at: DateTime.t(),
    description: String.t(),
    id: String.t(),
    name: String.t(),
    seed_markdoc_content: String.t(),
    sort_order: integer(),
    updated_at: DateTime.t()
    }

  defstruct [
    :app_type,
    :created_at,
    :description,
    :id,
    :name,
    :seed_markdoc_content,
    :sort_order,
    :updated_at
  ]

  @primitive_fields ~w(app_type created_at description id name seed_markdoc_content sort_order updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      app_type: map["app_type"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      description: map["description"],
      id: map["id"],
      name: map["name"],
      seed_markdoc_content: map["seed_markdoc_content"],
      sort_order: map["sort_order"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
