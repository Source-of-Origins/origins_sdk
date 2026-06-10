defmodule OriginsSdk.Homepage do
  @moduledoc """
  RPC actions on the `Origins.Homepage` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Homepage.CreateHomepageCard
  alias OriginsSdk.Homepage.DeleteHomepageCard
  alias OriginsSdk.Homepage.HomepageCard
  alias OriginsSdk.Homepage.ListHomepageCards
  alias OriginsSdk.Homepage.UpdateHomepageCard

  @doc """
  Run the `create_homepage_card` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_homepage_card(%CreateHomepageCard.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, HomepageCard)

    payload =
      %{
        "action" => "create_homepage_card",
        "input" => CreateHomepageCard.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &HomepageCard.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_homepage_card` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_homepage_card(%DeleteHomepageCard.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, HomepageCard)

    payload =
      %{
        "action" => "delete_homepage_card",
        "input" => DeleteHomepageCard.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &HomepageCard.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_homepage_cards` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_homepage_cards(%ListHomepageCards.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, HomepageCard)

    payload =
      %{
        "action" => "list_homepage_cards",
        "input" => ListHomepageCards.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &HomepageCard.from_list/1, nil)
    end
  end


  @doc """
  Run the `update_homepage_card` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_homepage_card(%UpdateHomepageCard.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, HomepageCard)

    payload =
      %{
        "action" => "update_homepage_card",
        "input" => UpdateHomepageCard.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &HomepageCard.from_json/1, nil)
    end
  end


  defp normalize_fields(:all, schema), do: schema.primitive_fields()
  defp normalize_fields(list, _) when is_list(list), do: list

  defp encode_fields(fields) do
    Enum.map(fields, fn
      atom when is_atom(atom) -> Atom.to_string(atom)
      str when is_binary(str) -> str
      {parent, nested} -> %{Atom.to_string(parent) => encode_fields(nested)}
    end)
  end

  defp maybe_put(map, _key, nil), do: map
  defp maybe_put(map, key, value), do: Map.put(map, key, value)

  defp decode_action_response(%{"success" => true, "data" => data} = body, data_decoder, meta_decoder) do
    metadata = if meta_decoder, do: meta_decoder.(body["metadata"]), else: nil
    result = %{data: data_decoder.(data)}
    result = if metadata, do: Map.put(result, :metadata, metadata), else: result
    {:ok, result}
  end

  defp decode_action_response(%{"success" => false, "errors" => errors}, _, _) do
    {:error, Error.from_list(errors)}
  end

end
