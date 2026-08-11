defmodule OriginsSdk.Apps.CreateAssessmentResponseAtActivity do
  @moduledoc """
  Input + metadata types for `create_assessment_response_at_activity`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_assessment_response_at_activity`."

    @type t :: %__MODULE__{
          answers: map() | nil,
          app_id: String.t(),
          attribution: map() | nil,
          completed_at: DateTime.t() | nil,
          current_node: String.t() | nil,
          email: String.t() | nil,
          enrollment_id: String.t() | nil,
          full_name: String.t() | nil,
          graph_snapshot_edges: list() | nil,
          graph_snapshot_nodes: list() | nil,
          launch_activity_id: String.t() | nil,
          path_history: list() | nil,
          phone: String.t() | nil,
          result: map() | nil
        }

    @enforce_keys [:app_id]
    defstruct [:answers, :app_id, :attribution, :completed_at, :current_node, :email, :enrollment_id, :full_name, :graph_snapshot_edges, :graph_snapshot_nodes, :launch_activity_id, :path_history, :phone, :result]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"answers" => input.answers, "app_id" => input.app_id, "attribution" => input.attribution, "completed_at" => input.completed_at, "current_node" => input.current_node, "email" => input.email, "enrollment_id" => input.enrollment_id, "full_name" => input.full_name, "graph_snapshot_edges" => input.graph_snapshot_edges, "graph_snapshot_nodes" => input.graph_snapshot_nodes, "launch_activity_id" => input.launch_activity_id, "path_history" => input.path_history, "phone" => input.phone, "result" => input.result}
    end
  end


end
