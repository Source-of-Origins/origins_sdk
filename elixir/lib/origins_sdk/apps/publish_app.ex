defmodule OriginsSdk.Apps.PublishApp do
  @moduledoc """
  Input + metadata types for `publish_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `publish_app`."

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
