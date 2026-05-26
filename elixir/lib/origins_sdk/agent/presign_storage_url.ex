defmodule OriginsSdk.Agent.PresignStorageUrl do
  @moduledoc """
  Input + metadata types for `presign_storage_url`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `presign_storage_url`."

    @type t :: %__MODULE__{
          storage_path: String.t()
        }

    @enforce_keys [:storage_path]
    defstruct [:storage_path]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"storage_path" => input.storage_path}
    end
  end


end
