defmodule OriginsSdk.Agent.MessageFlag do
  @moduledoc """
  Mirror of `Origins.Agent.MessageFlag` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    created_at: DateTime.t(),
    guardrail: any() | nil,
    id: String.t(),
    message_id: String.t(),
    reviewed_at: DateTime.t() | nil,
    type: any()
    }

  defstruct [
    :created_at,
    :guardrail,
    :id,
    :message_id,
    :reviewed_at,
    :type
  ]

  @primitive_fields ~w(created_at guardrail id message_id reviewed_at type)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:created_at, :guardrail, :id, :message_id, :reviewed_at, :type]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      guardrail: map["guardrail"],
      id: map["id"],
      message_id: map["message_id"],
      reviewed_at: OriginsSdk.Internal.decode_datetime(map["reviewed_at"]),
      type: map["type"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
