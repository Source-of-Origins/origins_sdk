defmodule OriginsSdk.Apps.ProgramTest do
  @moduledoc """
  Mirror of `Origins.Apps.ProgramTest` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    coach_conversation_id: String.t() | nil,
    created_at: DateTime.t(),
    id: String.t(),
    name: String.t(),
    program_id: String.t(),
    test_user_id: String.t() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :coach_conversation_id,
    :created_at,
    :id,
    :name,
    :program_id,
    :test_user_id,
    :updated_at
  ]

  @primitive_fields ~w(coach_conversation_id created_at id name program_id test_user_id updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      coach_conversation_id: map["coach_conversation_id"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      name: map["name"],
      program_id: map["program_id"],
      test_user_id: map["test_user_id"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
