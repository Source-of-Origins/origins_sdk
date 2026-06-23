defmodule OriginsSdk.Libraries.Create do
  @moduledoc """
  Input + metadata types for `create`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create`."

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
