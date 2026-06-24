defmodule OriginsSdk.Libraries.AddItem do
  @moduledoc """
  Input + metadata types for `add_item`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `add_item`."

    @type t :: %__MODULE__{
          item_type: any(),
          library_file_id: String.t() | nil,
          library_id: String.t() | nil,
          playlist_id: String.t()
        }

    @enforce_keys [:item_type, :playlist_id]
    defstruct [:item_type, :library_file_id, :library_id, :playlist_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"item_type" => input.item_type, "library_file_id" => input.library_file_id, "library_id" => input.library_id, "playlist_id" => input.playlist_id}
    end
  end


end
