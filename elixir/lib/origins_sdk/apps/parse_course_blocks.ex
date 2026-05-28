defmodule OriginsSdk.Apps.ParseCourseBlocks do
  @moduledoc """
  Input + metadata types for `parse_course_blocks`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `parse_course_blocks`."

    @type t :: %__MODULE__{
          content: String.t()
        }

    @enforce_keys [:content]
    defstruct [:content]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"content" => input.content}
    end
  end


end
