defmodule OriginsSdk.Libraries.Update do
  @moduledoc """
  Input + metadata types for `update`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `update`."

    @type t :: %__MODULE__{
          description: String.t() | nil,
          title: String.t()
        }

    @enforce_keys [:title]
    defstruct [:description, :title]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"description" => input.description, "title" => input.title}
    end
  end


end
