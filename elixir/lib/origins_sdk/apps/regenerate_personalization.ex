defmodule OriginsSdk.Apps.RegeneratePersonalization do
  @moduledoc """
  Input + metadata types for `regenerate_personalization`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `regenerate_personalization`."

    @type t :: %__MODULE__{
          mode: any(),
          program_id: String.t(),
          prompt: String.t() | nil,
          reason: any() | nil
        }

    @enforce_keys [:mode, :program_id]
    defstruct [:mode, :program_id, :prompt, :reason]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"mode" => input.mode, "program_id" => input.program_id, "prompt" => input.prompt, "reason" => input.reason}
    end
  end


end
