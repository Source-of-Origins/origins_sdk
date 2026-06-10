defmodule OriginsSdk.Apps.ForUserPersonalized do
  @moduledoc """
  Input + metadata types for `for_user_personalized`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `for_user_personalized`."

    @type t :: %__MODULE__{
          app_id: String.t(),
          user_id: String.t()
        }

    @enforce_keys [:app_id, :user_id]
    defstruct [:app_id, :user_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"app_id" => input.app_id, "user_id" => input.user_id}
    end
  end


end
