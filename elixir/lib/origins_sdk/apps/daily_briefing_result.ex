defmodule OriginsSdk.Apps.DailyBriefingResult do
  @moduledoc """
  Mirror of `Origins.Apps.Course.DailyBriefing` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    date: Date.t() | nil,
    generated_at: DateTime.t() | nil,
    pages: list() | nil,
    read_at: DateTime.t() | nil,
    session_id: String.t()
    }

  defstruct [
    :date,
    :generated_at,
    :pages,
    :read_at,
    :session_id
  ]

  @primitive_fields ~w(date generated_at pages read_at session_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:date, :generated_at, {:pages, [:body]}, :read_at, :session_id]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      date: OriginsSdk.Internal.decode_date(map["date"]),
      generated_at: OriginsSdk.Internal.decode_datetime(map["generated_at"]),
      pages: map["pages"],
      read_at: OriginsSdk.Internal.decode_datetime(map["read_at"]),
      session_id: map["session_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
