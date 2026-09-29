defmodule OriginsSdk.Accounts.GetLessonWatchTime do
  @moduledoc """
  Input + metadata types for `get_lesson_watch_time`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `get_lesson_watch_time`."

    @type t :: %__MODULE__{
          from: Date.t(),
          to: Date.t()
        }

    @enforce_keys [:from, :to]
    defstruct [:from, :to]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"from" => input.from, "to" => input.to}
    end
  end


end
