defmodule OriginsSdk.Apps.AssessmentResponse do
  @moduledoc """
  Mirror of `Origins.Apps.AssessmentResponse` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    answers: map() | nil,
    app_id: String.t(),
    attribution: map() | nil,
    completed_at: DateTime.t() | nil,
    created_at: DateTime.t(),
    current_node: String.t() | nil,
    email: String.t() | nil,
    full_name: String.t() | nil,
    graph_snapshot_edges: list() | nil,
    graph_snapshot_nodes: list() | nil,
    id: String.t(),
    path_history: list() | nil,
    phone: String.t() | nil,
    result: map() | nil,
    updated_at: DateTime.t(),
    user_id: String.t() | nil
    }

  defstruct [
    :answers,
    :app_id,
    :attribution,
    :completed_at,
    :created_at,
    :current_node,
    :email,
    :full_name,
    :graph_snapshot_edges,
    :graph_snapshot_nodes,
    :id,
    :path_history,
    :phone,
    :result,
    :updated_at,
    :user_id
  ]

  @primitive_fields ~w(answers app_id attribution completed_at created_at current_node email full_name graph_snapshot_edges graph_snapshot_nodes id path_history phone result updated_at user_id)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      answers: map["answers"],
      app_id: map["app_id"],
      attribution: map["attribution"],
      completed_at: OriginsSdk.Internal.decode_datetime(map["completed_at"]),
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      current_node: map["current_node"],
      email: map["email"],
      full_name: map["full_name"],
      graph_snapshot_edges: map["graph_snapshot_edges"],
      graph_snapshot_nodes: map["graph_snapshot_nodes"],
      id: map["id"],
      path_history: map["path_history"],
      phone: map["phone"],
      result: map["result"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_id: map["user_id"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
