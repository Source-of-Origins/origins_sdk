defmodule OriginsSdk.Agent.ChatReply do
  @moduledoc """
  Mirror of `Origins.Agent.ChatReply` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    conversation_id: String.t(),
    response: String.t()
    }

  defstruct [
    :conversation_id,
    :response
  ]

  @primitive_fields ~w(conversation_id response)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      conversation_id: map["conversation_id"],
      response: map["response"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
