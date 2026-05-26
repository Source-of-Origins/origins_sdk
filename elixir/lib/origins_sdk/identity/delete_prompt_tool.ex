defmodule OriginsSdk.Identity.DeletePromptTool do
  @moduledoc """
  Input + metadata types for `delete_prompt_tool`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `delete_prompt_tool`."

    @type t :: %__MODULE__{

        }

    @enforce_keys []
    defstruct []

    @doc false
    def to_json(%__MODULE__{} = _input) do
      %{}
    end
  end


end
