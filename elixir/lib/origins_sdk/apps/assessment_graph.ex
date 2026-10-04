defmodule OriginsSdk.Apps.AssessmentGraph do
  @moduledoc """
  Mirror of `Origins.Apps.AssessmentGraph` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    edges: list() | nil,
    nodes: list() | nil,
    start_node: String.t() | nil
    }

  defstruct [
    :edges,
    :nodes,
    :start_node
  ]

  @primitive_fields ~w(edges nodes start_node)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc "Every field as the server's field selector wants it: nested embedded and typed-struct attributes carry their own field lists."
  def field_tree, do: [{:edges, [:condition_field, :condition_op, :condition_type, :condition_value, :source, :target]}, {:nodes, [:description, :highlight, :id, :kind, :loading_bars, :max, :min, {:options, [:label, :route, :segment, :value]}, :required, {:sliders, [:high_label, :id, :label, :low_label, :max, :min]}, :subtitle, :summary_items, :title, :type, :weight]}, :start_node]

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      edges: map["edges"],
      nodes: map["nodes"],
      start_node: map["start_node"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
