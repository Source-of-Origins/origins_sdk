defmodule OriginsSdk.Libraries.AddMany do
  @moduledoc """
  Input + metadata types for `add_many`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `add_many`."

    @type t :: %__MODULE__{
          items: list(),
          playlist_id: String.t()
        }

    @enforce_keys [:items, :playlist_id]
    defstruct [:items, :playlist_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"items" => input.items, "playlist_id" => input.playlist_id}
    end
  end


end
