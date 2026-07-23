defmodule OriginsSdk.Apps.Version do
  @moduledoc """
  Mirror of `Origins.Apps.App.Version` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    change_source_message_id: String.t() | nil,
    change_summary: String.t() | nil,
    changes: map() | nil,
    id: String.t(),
    version_action_name: atom(),
    version_action_type: any(),
    version_inserted_at: DateTime.t(),
    version_source_id: String.t(),
    version_updated_at: DateTime.t()
    }

  defstruct [
    :change_source_message_id,
    :change_summary,
    :changes,
    :id,
    :version_action_name,
    :version_action_type,
    :version_inserted_at,
    :version_source_id,
    :version_updated_at
  ]

  @primitive_fields ~w(change_source_message_id change_summary changes id version_action_name version_action_type version_inserted_at version_source_id version_updated_at)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      change_source_message_id: map["change_source_message_id"],
      change_summary: map["change_summary"],
      changes: map["changes"],
      id: map["id"],
      version_action_name: OriginsSdk.Internal.decode_atom(map["version_action_name"]),
      version_action_type: map["version_action_type"],
      version_inserted_at: OriginsSdk.Internal.decode_datetime(map["version_inserted_at"]),
      version_source_id: map["version_source_id"],
      version_updated_at: OriginsSdk.Internal.decode_datetime(map["version_updated_at"])
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
