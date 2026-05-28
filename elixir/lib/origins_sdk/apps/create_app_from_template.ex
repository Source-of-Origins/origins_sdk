defmodule OriginsSdk.Apps.CreateAppFromTemplate do
  @moduledoc """
  Input + metadata types for `create_app_from_template`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_app_from_template`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t(),
          template_id: String.t()
        }

    @enforce_keys [:origin_entity_id, :template_id]
    defstruct [:origin_entity_id, :template_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "template_id" => input.template_id}
    end
  end


end
