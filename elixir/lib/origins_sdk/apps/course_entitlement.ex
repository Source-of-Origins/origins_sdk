defmodule OriginsSdk.Apps.CourseEntitlement do
  @moduledoc """
  Mirror of `Origins.Apps.CourseEntitlement` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    app_id: String.t() | nil,
    ended_at: DateTime.t() | nil,
    granted_at: DateTime.t(),
    id: String.t(),
    plan_id: String.t() | nil,
    tier: String.t()
    }

  defstruct [
    :app_id,
    :ended_at,
    :granted_at,
    :id,
    :plan_id,
    :tier
  ]

  @primitive_fields ~w(app_id ended_at granted_at id plan_id tier)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      app_id: map["app_id"],
      ended_at: OriginsSdk.Internal.decode_datetime(map["ended_at"]),
      granted_at: OriginsSdk.Internal.decode_datetime(map["granted_at"]),
      id: map["id"],
      plan_id: map["plan_id"],
      tier: map["tier"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
