defmodule OriginsSdk.Libraries.ResolveVideoPlaybacks do
  @moduledoc """
  Input + metadata types for `resolve_video_playbacks`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `resolve_video_playbacks`."

    @type t :: %__MODULE__{
          origin_entity_id: String.t() | nil,
          paths: list()
        }

    @enforce_keys [:paths]
    defstruct [:origin_entity_id, :paths]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"origin_entity_id" => input.origin_entity_id, "paths" => input.paths}
    end
  end


end
