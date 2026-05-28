defmodule OriginsSdk.Apps.ListAppsForOriginAndType do
  @moduledoc """
  Input + metadata types for `list_apps_for_origin_and_type`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_apps_for_origin_and_type`."

    @type t :: %__MODULE__{
          app_type: String.t(),
          origin_entity_id: String.t()
        }

    @enforce_keys [:app_type, :origin_entity_id]
    defstruct [:app_type, :origin_entity_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_type" => input.app_type, "origin_entity_id" => input.origin_entity_id}
    end
  end


end
