defmodule OriginsSdk.Accounts.ConsentRecord do
  @moduledoc """
  Mirror of `Origins.Accounts.ConsentRecord` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    granted: boolean(),
    id: String.t(),
    ip: String.t() | nil,
    kind: any(),
    method: any(),
    policy_version: String.t(),
    recorded_at: DateTime.t(),
    text_shown: String.t(),
    user_agent: String.t() | nil
    }

  defstruct [
    :granted,
    :id,
    :ip,
    :kind,
    :method,
    :policy_version,
    :recorded_at,
    :text_shown,
    :user_agent
  ]

  @primitive_fields ~w(granted id ip kind method policy_version recorded_at text_shown user_agent)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      granted: map["granted"],
      id: map["id"],
      ip: map["ip"],
      kind: map["kind"],
      method: map["method"],
      policy_version: map["policy_version"],
      recorded_at: OriginsSdk.Internal.decode_datetime(map["recorded_at"]),
      text_shown: map["text_shown"],
      user_agent: map["user_agent"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
