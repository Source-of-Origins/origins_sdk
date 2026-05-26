defmodule OriginsSdk.Identity.ListUserProfiles do
  @moduledoc """
  Input + metadata types for `list_user_profiles`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_user_profiles`."

    @type t :: %__MODULE__{

        }

    @enforce_keys []
    defstruct []

    @doc false
    def to_json(%__MODULE__{} = _input) do
      %{}
    end
  end


end
