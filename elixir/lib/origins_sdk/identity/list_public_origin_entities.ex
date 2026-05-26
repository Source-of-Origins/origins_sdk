defmodule OriginsSdk.Identity.ListPublicOriginEntities do
  @moduledoc """
  Input + metadata types for `list_public_origin_entities`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_public_origin_entities`."

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
