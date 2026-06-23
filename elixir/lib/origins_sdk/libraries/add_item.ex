defmodule OriginsSdk.Libraries.AddItem do
  @moduledoc """
  Input + metadata types for `add_item`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `add_item`."

    @type t :: %__MODULE__{
          library_file_id: String.t(),
          playlist_id: String.t()
        }

    @enforce_keys [:library_file_id, :playlist_id]
    defstruct [:library_file_id, :playlist_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"library_file_id" => input.library_file_id, "playlist_id" => input.playlist_id}
    end
  end


end
