defmodule OriginsSdk.Libraries.CreateLibraryAccessGrant do
  @moduledoc """
  Input + metadata types for `create_library_access_grant`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_library_access_grant`."

    @type t :: %__MODULE__{
          grantee_origin_entity_id: String.t(),
          library_id: String.t()
        }

    @enforce_keys [:grantee_origin_entity_id, :library_id]
    defstruct [:grantee_origin_entity_id, :library_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"grantee_origin_entity_id" => input.grantee_origin_entity_id, "library_id" => input.library_id}
    end
  end


end
