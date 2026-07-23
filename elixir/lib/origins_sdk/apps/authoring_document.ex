defmodule OriginsSdk.Apps.AuthoringDocument do
  @moduledoc """
  Mirror of `Origins.Apps.AuthoringDocument` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    blocks: list() | nil,
    config: map() | nil,
    errors: list() | nil,
    page_type: String.t()
    }

  defstruct [
    :blocks,
    :config,
    :errors,
    :page_type
  ]

  @primitive_fields ~w(blocks config errors page_type)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      blocks: map["blocks"],
      config: map["config"],
      errors: map["errors"],
      page_type: map["page_type"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
