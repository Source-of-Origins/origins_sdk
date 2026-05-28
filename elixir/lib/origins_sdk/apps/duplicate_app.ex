defmodule OriginsSdk.Apps.DuplicateApp do
  @moduledoc """
  Input + metadata types for `duplicate_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `duplicate_app`."

    @type t :: %__MODULE__{
          source_id: String.t()
        }

    @enforce_keys [:source_id]
    defstruct [:source_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"source_id" => input.source_id}
    end
  end


end
