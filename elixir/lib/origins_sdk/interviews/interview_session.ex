defmodule OriginsSdk.Interviews.InterviewSession do
  @moduledoc """
  Mirror of `Origins.Interviews.InterviewSession` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    channel: any(),
    created_at: DateTime.t(),
    id: String.t(),
    key_quotes: list() | nil,
    metadata: map() | nil,
    origin_entity_id: String.t(),
    session_name: String.t() | nil,
    status: any(),
    summary: String.t() | nil,
    topics: list() | nil,
    updated_at: DateTime.t()
    }

  defstruct [
    :channel,
    :created_at,
    :id,
    :key_quotes,
    :metadata,
    :origin_entity_id,
    :session_name,
    :status,
    :summary,
    :topics,
    :updated_at
  ]

  @primitive_fields ~w(channel created_at id key_quotes metadata origin_entity_id session_name status summary topics updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      channel: map["channel"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      id: map["id"],
      key_quotes: map["key_quotes"],
      metadata: map["metadata"],
      origin_entity_id: map["origin_entity_id"],
      session_name: map["session_name"],
      status: map["status"],
      summary: map["summary"],
      topics: map["topics"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
