defmodule OriginsSdk.Accounts.SubmitWaitlistEntry do
  @moduledoc """
  Input + metadata types for `submit_waitlist_entry`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `submit_waitlist_entry`."

    @type t :: %__MODULE__{
          company_name: String.t() | nil,
          email: String.t(),
          full_name: String.t(),
          interest_areas: list() | nil,
          message: String.t() | nil,
          role: String.t() | nil,
          source: String.t() | nil
        }

    @enforce_keys [:email, :full_name]
    defstruct [:company_name, :email, :full_name, :interest_areas, :message, :role, :source]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"company_name" => input.company_name, "email" => input.email, "full_name" => input.full_name, "interest_areas" => input.interest_areas, "message" => input.message, "role" => input.role, "source" => input.source}
    end
  end


end
