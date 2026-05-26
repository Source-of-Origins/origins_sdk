defmodule OriginsSdk.Identity.ListCartesiaVoices do
  @moduledoc """
  Input + metadata types for `list_cartesia_voices`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `list_cartesia_voices`."

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
