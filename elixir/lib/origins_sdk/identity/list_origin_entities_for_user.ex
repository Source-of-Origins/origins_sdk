defmodule OriginsSdk.Identity.ListOriginEntitiesForUser do
  @moduledoc """
  Input + metadata types for `list_origin_entities_for_user`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_origin_entities_for_user`."

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
