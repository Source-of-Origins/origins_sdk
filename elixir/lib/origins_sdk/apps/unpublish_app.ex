defmodule OriginsSdk.Apps.UnpublishApp do
  @moduledoc """
  Input + metadata types for `unpublish_app`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `unpublish_app`."

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
