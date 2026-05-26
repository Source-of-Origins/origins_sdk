defmodule OriginsSdk.ExpertPages.ExpertPageLibrary do
  @moduledoc """
  Mirror of `Origins.ExpertPages.ExpertPageLibrary` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    expert_page_id: String.t(),
    id: String.t(),
    library_id: String.t(),
    updated_at: DateTime.t()
    }

  defstruct [
    :created_at,
    :expert_page_id,
    :id,
    :library_id,
    :updated_at
  ]

  @primitive_fields ~w(created_at expert_page_id id library_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      expert_page_id: map["expert_page_id"],
      id: map["id"],
      library_id: map["library_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
