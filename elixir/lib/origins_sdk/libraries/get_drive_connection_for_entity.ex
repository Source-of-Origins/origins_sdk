defmodule OriginsSdk.Libraries.GetDriveConnectionForEntity do
  @moduledoc """
  Input + metadata types for `get_drive_connection_for_entity`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_drive_connection_for_entity`."

    @type t :: %__MODULE__{
          entity_profile_id: String.t()
        }

    @enforce_keys [:entity_profile_id]
    defstruct [:entity_profile_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"entity_profile_id" => input.entity_profile_id}
    end
  end


end
