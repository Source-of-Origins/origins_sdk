defmodule OriginsSdk.Apps.SyncAssessmentProgress do
  @moduledoc """
  Input + metadata types for `sync_assessment_progress`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `sync_assessment_progress`."

    @type t :: %__MODULE__{
          answers: map() | nil,
          current_node: String.t() | nil,
          path_history: list() | nil
        }

    @enforce_keys []
    defstruct [:answers, :current_node, :path_history]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"answers" => input.answers, "current_node" => input.current_node, "path_history" => input.path_history}
    end
  end


end
