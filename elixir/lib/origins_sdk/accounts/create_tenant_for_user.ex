defmodule OriginsSdk.Accounts.CreateTenantForUser do
  @moduledoc """
  Input + metadata types for `create_tenant_for_user`. Generated — do not edit by hand.
  """

  defmodule Input do
    @moduledoc "Required arguments for `create_tenant_for_user`."

    @type t :: %__MODULE__{
          display_name: String.t(),
          picture_url: String.t() | nil,
          profile: map() | nil,
          slug: String.t()
        }

    @enforce_keys [:display_name, :slug]
    defstruct [:display_name, :picture_url, :profile, :slug]

    @doc false
    def to_json(%__MODULE__{} = input) do
      %{"display_name" => input.display_name, "picture_url" => input.picture_url, "profile" => input.profile, "slug" => input.slug}
    end
  end


end
