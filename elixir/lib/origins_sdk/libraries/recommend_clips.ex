defmodule OriginsSdk.Libraries.RecommendClips do
  @moduledoc """
  Input + metadata types for `recommend_clips`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `recommend_clips`."

    @type t :: %__MODULE__{
          answers: list() | nil,
          library_id: String.t(),
          limit: integer() | nil,
          origin_entity_id: String.t(),
          seen_file_ids: list() | nil,
          watched_file_ids: list() | nil
        }

    @enforce_keys [:library_id, :origin_entity_id]
    defstruct [:answers, :library_id, :limit, :origin_entity_id, :seen_file_ids, :watched_file_ids]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"answers" => input.answers, "library_id" => input.library_id, "limit" => input.limit, "origin_entity_id" => input.origin_entity_id, "seen_file_ids" => input.seen_file_ids, "watched_file_ids" => input.watched_file_ids}
    end
  end


end
