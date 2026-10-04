defmodule OriginsSdk.Agent.TurnState do
  @moduledoc """
  Mirror of `Origins.Agent.TurnState` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    running: boolean(),
    stale_at: DateTime.t() | nil
    }

  defstruct [
    :running,
    :stale_at
  ]

  @primitive_fields ~w(running stale_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [:running, :stale_at]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      running: map["running"],
      stale_at: OriginsSdk.Internal.decode_datetime(map["stale_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
