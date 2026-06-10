defmodule OriginsSdk.Messaging do
  @moduledoc """
  RPC actions on the `Origins.Messaging` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Messaging.ChatBinding
  alias OriginsSdk.Messaging.DestroyChatBinding
  alias OriginsSdk.Messaging.GetBindingPreview
  alias OriginsSdk.Messaging.ListAllChatBindings
  alias OriginsSdk.Messaging.ListChatBindingsForOriginEntity
  alias OriginsSdk.Messaging.RegisterProspect
  alias OriginsSdk.Messaging.ResolveMessagingLine

  @doc """
  Run the `destroy_chat_binding` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def destroy_chat_binding(%DestroyChatBinding.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatBinding)

    payload =
      %{
        "action" => "destroy_chat_binding",
        "input" => DestroyChatBinding.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatBinding.from_json/1, nil)
    end
  end


  @doc """
  First user/assistant exchange from the latest bound conversation for an OE.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def get_binding_preview(%GetBindingPreview.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_binding_preview",
        "input" => GetBindingPreview.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `list_all_chat_bindings` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_all_chat_bindings(%ListAllChatBindings.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatBinding)

    payload =
      %{
        "action" => "list_all_chat_bindings",
        "input" => ListAllChatBindings.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatBinding.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_chat_bindings_for_origin_entity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_chat_bindings_for_origin_entity(%ListChatBindingsForOriginEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatBinding)

    payload =
      %{
        "action" => "list_chat_bindings_for_origin_entity",
        "input" => ListChatBindingsForOriginEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatBinding.from_list/1, nil)
    end
  end


  @doc """
  Run the `register_prospect` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def register_prospect(%RegisterProspect.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatBinding)

    payload =
      %{
        "action" => "register_prospect",
        "input" => RegisterProspect.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatBinding.from_json/1, nil)
    end
  end


  @doc """
  Resolve the messaging line + source for an OriginEntity.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def resolve_messaging_line(%ResolveMessagingLine.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "resolve_messaging_line",
        "input" => ResolveMessagingLine.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
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
