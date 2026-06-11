defmodule OriginsSdk.Apps.UpsertAssessmentResponse do
  @moduledoc """
  Input + metadata types for `upsert_assessment_response`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `upsert_assessment_response`."

    @type t :: %__MODULE__{
          answers: map() | nil,
          app_id: String.t(),
          completed_at: DateTime.t() | nil,
          current_node: String.t() | nil,
          email: String.t() | nil,
          graph_snapshot_edges: list() | nil,
          graph_snapshot_nodes: list() | nil,
          path_history: list() | nil,
          user_id: String.t() | nil
        }

    @enforce_keys [:app_id]
    defstruct [:answers, :app_id, :completed_at, :current_node, :email, :graph_snapshot_edges, :graph_snapshot_nodes, :path_history, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"answers" => input.answers, "app_id" => input.app_id, "completed_at" => input.completed_at, "current_node" => input.current_node, "email" => input.email, "graph_snapshot_edges" => input.graph_snapshot_edges, "graph_snapshot_nodes" => input.graph_snapshot_nodes, "path_history" => input.path_history, "user_id" => input.user_id}
    end
  end


end
