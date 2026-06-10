defmodule OriginsSdk.Agent.ChatMessage do
  @moduledoc """
  Mirror of `Origins.Agent.ChatMessage` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    content: String.t(),
    created_at: String.t() | nil,
    id: String.t(),
    role: String.t()
    }

  defstruct [
    :content,
    :created_at,
    :id,
    :role
  ]

  @primitive_fields ~w(content created_at id role)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      content: map["content"],
      created_at: map["created_at"],
      id: map["id"],
      role: map["role"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
