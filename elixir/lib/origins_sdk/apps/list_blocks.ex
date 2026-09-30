defmodule OriginsSdk.Apps.ListBlocks do
  @moduledoc """
  Input + metadata types for `list_blocks`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_blocks`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          block_type: String.t() | nil
        }

    @enforce_keys [:app_id]
    defstruct [:app_id, :block_type]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "block_type" => input.block_type}
    end
  end


end
