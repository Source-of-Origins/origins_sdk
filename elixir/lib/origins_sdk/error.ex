defmodule OriginsSdk.Error do
  @moduledoc """
  Mirrors `AshRpcError`. Returned in the `{:error, [%Error{}, ...]}` branch
  of every RPC function when the action ran but produced a domain-level
  error. Transport-level failures come back as raw exceptions from `Req`.
  """

  defstruct [:type, :message, :field, :fields, :code, :details]

  @type t :: %__MODULE__{
          type: String.t() | nil,
          message: String.t() | nil,
          field: String.t() | nil,
          fields: [String.t()] | nil,
          code: String.t() | nil,
          details: map() | nil
        }

  @spec from_json(map()) :: t()
  def from_json(map) when is_map(map) do
    %__MODULE__{
      type: map["type"],
      message: map["message"],
      field: map["field"],
      fields: map["fields"],
      code: map["code"],
      details: map["details"]
    }
  end

  @spec from_list([map()]) :: [t()]
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
