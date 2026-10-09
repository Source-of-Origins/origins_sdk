defmodule OriginsSdk.Letta do
  @moduledoc """
  RPC actions on the `Origins.Letta` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Letta.Block
  alias OriginsSdk.Letta.ForgetAgentMemory
  alias OriginsSdk.Letta.UpdateAgentMemory

  @doc """
  Run the `forget_agent_memory` action.

  `identity` picks the record, as one of:
    * the `id` value

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def forget_agent_memory(identity, %ForgetAgentMemory.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Block)

    payload =
      %{
        "action" => "forget_agent_memory",
        "identity" => identity,
        "input" => ForgetAgentMemory.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Block.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_agent_memory` action.

  `identity` picks the record, as one of:
    * the `id` value

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_agent_memory(identity, %UpdateAgentMemory.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Block)

    payload =
      %{
        "action" => "update_agent_memory",
        "identity" => identity,
        "input" => UpdateAgentMemory.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Block.from_json/1, nil)
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
