defmodule OriginsSdk.Agent do
  @moduledoc """
  RPC actions on the `Origins.Agent` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Agent.AvatarPublicChat
  alias OriginsSdk.Agent.ChatMessage
  alias OriginsSdk.Agent.ChatReply
  alias OriginsSdk.Agent.ChatSuggestions
  alias OriginsSdk.Agent.Conversation
  alias OriginsSdk.Agent.CreateConversation
  alias OriginsSdk.Agent.FindRootConversation
  alias OriginsSdk.Agent.GenerateChatSuggestions
  alias OriginsSdk.Agent.GetBrandUsers
  alias OriginsSdk.Agent.GetConversationHistory
  alias OriginsSdk.Agent.ListConversations
  alias OriginsSdk.Agent.ListMyConversations
  alias OriginsSdk.Agent.PresignStorageUrl
  alias OriginsSdk.Agent.PreviewChat
  alias OriginsSdk.Agent.UpdateConversation
  alias OriginsSdk.Agent.UploadChatAttachment

  @doc """
  Public chat with an Origin (brand or avatar) using Letta agents

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `ChatReply` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def avatar_public_chat(%AvatarPublicChat.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "avatar_public_chat",
        "input" => AvatarPublicChat.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatReply.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_conversation` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_conversation(%CreateConversation.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Conversation)

    payload =
      %{
        "action" => "create_conversation",
        "input" => CreateConversation.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Conversation.from_json/1, nil)
    end
  end


  @doc """
  Find the root conversation for an Origin and user/session (with Letta agent)

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def find_root_conversation(%FindRootConversation.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Conversation)

    payload =
      %{
        "action" => "find_root_conversation",
        "input" => FindRootConversation.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Conversation.from_json/1, nil)
    end
  end


  @doc """
  Generate contextual chat suggestions based on conversation history

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `ChatSuggestions` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def generate_chat_suggestions(%GenerateChatSuggestions.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "generate_chat_suggestions",
        "input" => GenerateChatSuggestions.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatSuggestions.from_json/1, nil)
    end
  end


  @doc """
  Get users with their conversation statistics for a specific Origin

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def get_brand_users(%GetBrandUsers.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_brand_users",
        "input" => GetBrandUsers.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Get conversation history from Letta agent

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `ChatMessage` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def get_conversation_history(%GetConversationHistory.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_conversation_history",
        "input" => GetConversationHistory.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatMessage.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_conversations` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_conversations(%ListConversations.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Conversation)

    payload =
      %{
        "action" => "list_conversations",
        "input" => ListConversations.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Conversation.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_my_conversations` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_my_conversations(%ListMyConversations.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Conversation)

    payload =
      %{
        "action" => "list_my_conversations",
        "input" => ListMyConversations.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Conversation.from_list/1, nil)
    end
  end


  @doc """
  Generate a presigned URL for accessing a storage file

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def presign_storage_url(%PresignStorageUrl.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "presign_storage_url",
        "input" => PresignStorageUrl.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Preview chat for testing brand/avatar Origin configuration

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `ChatReply` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def preview_chat(%PreviewChat.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "preview_chat",
        "input" => PreviewChat.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatReply.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_conversation` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_conversation(%UpdateConversation.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Conversation)

    payload =
      %{
        "action" => "update_conversation",
        "input" => UpdateConversation.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Conversation.from_json/1, nil)
    end
  end


  @doc """
  Upload a file attachment for a chat message

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def upload_chat_attachment(%UploadChatAttachment.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "upload_chat_attachment",
        "input" => UploadChatAttachment.Input.to_json(input)
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
