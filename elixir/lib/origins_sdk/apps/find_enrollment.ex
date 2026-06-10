defmodule OriginsSdk.Apps.FindEnrollment do
  @moduledoc """
  Input + metadata types for `find_enrollment`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `find_enrollment`."

    @type t :: %__MODULE__{
          character_id: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:character_id, :user_id]
    defstruct [:character_id, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"character_id" => input.character_id, "user_id" => input.user_id}
    end
  end


end
