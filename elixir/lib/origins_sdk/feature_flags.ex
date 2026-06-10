defmodule OriginsSdk.FeatureFlags do
  @moduledoc """
  RPC actions on the `Origins.FeatureFlags` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.FeatureFlags.CreateFeatureFlag
  alias OriginsSdk.FeatureFlags.DeleteFeatureFlag
  alias OriginsSdk.FeatureFlags.FeatureFlag
  alias OriginsSdk.FeatureFlags.ListFeatureFlags
  alias OriginsSdk.FeatureFlags.UpdateFeatureFlag

  @doc """
  Run the `create_feature_flag` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_feature_flag(%CreateFeatureFlag.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, FeatureFlag)

    payload =
      %{
        "action" => "create_feature_flag",
        "input" => CreateFeatureFlag.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &FeatureFlag.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_feature_flag` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_feature_flag(%DeleteFeatureFlag.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, FeatureFlag)

    payload =
      %{
        "action" => "delete_feature_flag",
        "input" => DeleteFeatureFlag.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &FeatureFlag.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_feature_flags` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_feature_flags(%ListFeatureFlags.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, FeatureFlag)

    payload =
      %{
        "action" => "list_feature_flags",
        "input" => ListFeatureFlags.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &FeatureFlag.from_list/1, nil)
    end
  end


  @doc """
  Run the `update_feature_flag` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_feature_flag(%UpdateFeatureFlag.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, FeatureFlag)

    payload =
      %{
        "action" => "update_feature_flag",
        "input" => UpdateFeatureFlag.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &FeatureFlag.from_json/1, nil)
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
