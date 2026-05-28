defmodule OriginsSdk.Apps.AppLibrary do
  @moduledoc """
  Mirror of `Origins.Apps.AppLibrary` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    app_id: String.t(),
    created_at: DateTime.t(),
    id: String.t(),
    library_id: String.t(),
    updated_at: DateTime.t()
    }

  defstruct [
    :app_id,
    :created_at,
    :id,
    :library_id,
    :updated_at
  ]

  @primitive_fields ~w(app_id created_at id library_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      app_id: map["app_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      library_id: map["library_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end
end
