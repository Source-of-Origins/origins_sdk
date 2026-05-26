defmodule OriginsSdk.Libraries.InitiateDriveOauth do
  @moduledoc """
  Input + metadata types for `initiate_drive_oauth`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `initiate_drive_oauth`."

    @type t :: %__MODULE__{
          entity_profile_id: String.t(),
          redirect_uri: String.t() | nil
        }

    @enforce_keys [:entity_profile_id]
    defstruct [:entity_profile_id, :redirect_uri]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"entity_profile_id" => input.entity_profile_id, "redirect_uri" => input.redirect_uri}
    end
  end


end
