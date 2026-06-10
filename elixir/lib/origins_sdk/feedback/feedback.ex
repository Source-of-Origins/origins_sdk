defmodule OriginsSdk.Feedback.Feedback do
  @moduledoc """
  Mirror of `Origins.Feedback.Feedback` over the wire.
  Generated — do not edit by hand.
  """

  @type t :: %__MODULE__{
    admin_notes: String.t() | nil,
    context_name: String.t() | nil,
    context_type: String.t() | nil,
    created_at: DateTime.t(),
    feedback_type: String.t(),
    id: String.t(),
    message: String.t(),
    origin_entity_id: String.t() | nil,
    resolved_at: DateTime.t() | nil,
    screenshot_url: String.t() | nil,
    status: String.t(),
    subject: String.t(),
    updated_at: DateTime.t(),
    user_email: String.t() | nil,
    user_name: String.t() | nil
    }

  defstruct [
    :admin_notes,
    :context_name,
    :context_type,
    :created_at,
    :feedback_type,
    :id,
    :message,
    :origin_entity_id,
    :resolved_at,
    :screenshot_url,
    :status,
    :subject,
    :updated_at,
    :user_email,
    :user_name
  ]

  @primitive_fields ~w(admin_notes context_name context_type created_at feedback_type id message origin_entity_id resolved_at screenshot_url status subject updated_at user_email user_name)a

  @doc "All primitive field atoms — used when caller passes `fields: :all`."
  def primitive_fields, do: @primitive_fields

  @doc false
  @spec from_json(map() | nil) :: t() | nil
  def from_json(nil), do: nil

  def from_json(map) when is_map(map) do
    %__MODULE__{
      admin_notes: map["admin_notes"],
      context_name: map["context_name"],
      context_type: map["context_type"],
      created_at: OriginsSdk.Internal.decode_datetime(map["created_at"]),
      feedback_type: map["feedback_type"],
      id: map["id"],
      message: map["message"],
      origin_entity_id: map["origin_entity_id"],
      resolved_at: OriginsSdk.Internal.decode_datetime(map["resolved_at"]),
      screenshot_url: map["screenshot_url"],
      status: map["status"],
      subject: map["subject"],
      updated_at: OriginsSdk.Internal.decode_datetime(map["updated_at"]),
      user_email: map["user_email"],
      user_name: map["user_name"]
    }
  end

  @doc false
  @spec from_list([map()] | nil) :: [t()] | nil
  def from_list(nil), do: nil
  def from_list(list) when is_list(list), do: Enum.map(list, &from_json/1)
end
