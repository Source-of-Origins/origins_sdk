defmodule OriginsSdk.Libraries.ListForPlaylist do
  @moduledoc """
  Input + metadata types for `list_for_playlist`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_for_playlist`."

    @type t :: %__MODULE__{
          playlist_id: String.t()
        }

    @enforce_keys [:playlist_id]
    defstruct [:playlist_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"playlist_id" => input.playlist_id}
    end
  end


end
