defmodule OriginsSdk.Libraries.RemoveItem do
  @moduledoc """
  Input + metadata types for `remove_item`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `remove_item`."

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
