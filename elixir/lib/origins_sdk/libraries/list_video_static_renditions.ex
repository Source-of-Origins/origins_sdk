defmodule OriginsSdk.Libraries.ListVideoStaticRenditions do
  @moduledoc """
  Input + metadata types for `list_video_static_renditions`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_video_static_renditions`."

    @type t :: %__MODULE__{
          library_file_id: String.t()
        }

    @enforce_keys [:library_file_id]
    defstruct [:library_file_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"library_file_id" => input.library_file_id}
    end
  end


end
