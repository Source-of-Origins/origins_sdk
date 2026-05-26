defmodule OriginsSdk.Identity.ListOriginEntityMemberships do
  @moduledoc """
  Input + metadata types for `list_origin_entity_memberships`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_origin_entity_memberships`."

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
