defmodule OriginsSdk.Apps.InitializePersonalization do
  @moduledoc """
  Input + metadata types for `initialize_personalization`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `initialize_personalization`."

    @type t :: %__MODULE__{
          program_id: String.t()
        }

    @enforce_keys [:program_id]
    defstruct [:program_id]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"program_id" => input.program_id}
    end
  end


end
