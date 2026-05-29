defmodule OriginsSdk.Identity do
  @moduledoc """
  RPC actions on the `Origins.Identity` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Identity.AcceptMembershipInvitation
  alias OriginsSdk.Identity.ActivateMembership
  alias OriginsSdk.Identity.ChatConfig
  alias OriginsSdk.Identity.CloneCartesiaVoice
  alias OriginsSdk.Identity.CreateChatConfig
  alias OriginsSdk.Identity.CreateOriginAsset
  alias OriginsSdk.Identity.CreateOriginEntity
  alias OriginsSdk.Identity.CreateOriginEntityMembership
  alias OriginsSdk.Identity.CreatePromptContext
  alias OriginsSdk.Identity.CreatePromptTool
  alias OriginsSdk.Identity.CreateSetupProgress
  alias OriginsSdk.Identity.CreateSoulConfig
  alias OriginsSdk.Identity.DeleteOriginEntity
  alias OriginsSdk.Identity.DeleteOriginEntityMembership
  alias OriginsSdk.Identity.DeletePromptContext
  alias OriginsSdk.Identity.DeletePromptTool
  alias OriginsSdk.Identity.DiscoverAndExtractProfile
  alias OriginsSdk.Identity.DiscoverEntityLinks
  alias OriginsSdk.Identity.EditAssetImage
  alias OriginsSdk.Identity.GenerateConversationStarters
  alias OriginsSdk.Identity.GenerateProfileDescription
  alias OriginsSdk.Identity.GenerateSoulConfig
  alias OriginsSdk.Identity.GetInheritedMemberships
  alias OriginsSdk.Identity.GetMembershipByToken
  alias OriginsSdk.Identity.GetMembershipsForOrigin
  alias OriginsSdk.Identity.GetMembershipsForUser
  alias OriginsSdk.Identity.GetOriginEntity
  alias OriginsSdk.Identity.GetOriginEntityBySlug
  alias OriginsSdk.Identity.GetOriginEntityMembership
  alias OriginsSdk.Identity.GetPendingMemberships
  alias OriginsSdk.Identity.GetPromptContextPublicTitle
  alias OriginsSdk.Identity.GetPublicOriginEntity
  alias OriginsSdk.Identity.InviteToOrigin
  alias OriginsSdk.Identity.ListCartesiaVoices
  alias OriginsSdk.Identity.ListChatConfigs
  alias OriginsSdk.Identity.ListOriginAssets
  alias OriginsSdk.Identity.ListOriginEntities
  alias OriginsSdk.Identity.ListOriginEntitiesForSwitcher
  alias OriginsSdk.Identity.ListOriginEntitiesForUser
  alias OriginsSdk.Identity.ListOriginEntityMemberships
  alias OriginsSdk.Identity.ListPromptContextsForOrigin
  alias OriginsSdk.Identity.ListPromptToolsForOrigin
  alias OriginsSdk.Identity.ListPublicOriginEntities
  alias OriginsSdk.Identity.ListSetupProgress
  alias OriginsSdk.Identity.ListSoulConfigs
  alias OriginsSdk.Identity.ListUserProfiles
  alias OriginsSdk.Identity.OriginAsset
  alias OriginsSdk.Identity.OriginEntity
  alias OriginsSdk.Identity.OriginEntityMembership
  alias OriginsSdk.Identity.PromptContext
  alias OriginsSdk.Identity.PromptTool
  alias OriginsSdk.Identity.ScrapeWebsiteContent
  alias OriginsSdk.Identity.SetupProgress
  alias OriginsSdk.Identity.SoulConfig
  alias OriginsSdk.Identity.SpeechToText
  alias OriginsSdk.Identity.SuspendMembership
  alias OriginsSdk.Identity.TextToSpeech
  alias OriginsSdk.Identity.UpdateChatConfig
  alias OriginsSdk.Identity.UpdateOriginAsset
  alias OriginsSdk.Identity.UpdateOriginEntity
  alias OriginsSdk.Identity.UpdateOriginEntityMembership
  alias OriginsSdk.Identity.UpdateOriginEntityProfileConfig
  alias OriginsSdk.Identity.UpdatePromptContext
  alias OriginsSdk.Identity.UpdatePromptTool
  alias OriginsSdk.Identity.UpdateSetupProgress
  alias OriginsSdk.Identity.UpdateSoulConfig
  alias OriginsSdk.Identity.UpdateUserProfile
  alias OriginsSdk.Identity.UserProfile

  @doc """
  Accept an invitation

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def accept_membership_invitation(%AcceptMembershipInvitation.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "accept_membership_invitation",
        "input" => AcceptMembershipInvitation.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Activate a suspended membership

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def activate_membership(%ActivateMembership.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "activate_membership",
        "input" => ActivateMembership.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Clone a voice using Cartesia API

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def clone_cartesia_voice(%CloneCartesiaVoice.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "clone_cartesia_voice",
        "input" => CloneCartesiaVoice.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_chat_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_chat_config(%CreateChatConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatConfig)

    payload =
      %{
        "action" => "create_chat_config",
        "input" => CreateChatConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_origin_asset` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_origin_asset(%CreateOriginAsset.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginAsset)

    payload =
      %{
        "action" => "create_origin_asset",
        "input" => CreateOriginAsset.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginAsset.from_json/1, nil)
    end
  end


  @doc """
  Create a sub-OriginEntity under an existing parent. Top-level Origins
  (`parent_origin_entity_id IS NULL`) cannot be created through this
  action under the unified tenant model — each top-level OE is the
  root of its own Tenant and must be minted via
  `Origins.Accounts.Tenant.create_for_user/1`, which atomically creates
  Tenant + root OE + owner Membership.
  
  The policy below forbids parentless creates for non-internal callers.
  Internal callers (`AtomicSignup`, `CreateTenantForUser`) bypass via
  SystemActor and legitimately create the root OE directly.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_origin_entity(%CreateOriginEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "create_origin_entity",
        "input" => CreateOriginEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_origin_entity_membership` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_origin_entity_membership(%CreateOriginEntityMembership.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "create_origin_entity_membership",
        "input" => CreateOriginEntityMembership.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_prompt_context` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_prompt_context(%CreatePromptContext.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptContext)

    payload =
      %{
        "action" => "create_prompt_context",
        "input" => CreatePromptContext.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptContext.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_prompt_tool` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_prompt_tool(%CreatePromptTool.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptTool)

    payload =
      %{
        "action" => "create_prompt_tool",
        "input" => CreatePromptTool.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptTool.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_setup_progress` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_setup_progress(%CreateSetupProgress.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SetupProgress)

    payload =
      %{
        "action" => "create_setup_progress",
        "input" => CreateSetupProgress.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SetupProgress.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_soul_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_soul_config(%CreateSoulConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SoulConfig)

    payload =
      %{
        "action" => "create_soul_config",
        "input" => CreateSoulConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SoulConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_origin_entity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_origin_entity(%DeleteOriginEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "delete_origin_entity",
        "input" => DeleteOriginEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_origin_entity_membership` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_origin_entity_membership(%DeleteOriginEntityMembership.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "delete_origin_entity_membership",
        "input" => DeleteOriginEntityMembership.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_prompt_context` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_prompt_context(%DeletePromptContext.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptContext)

    payload =
      %{
        "action" => "delete_prompt_context",
        "input" => DeletePromptContext.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptContext.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_prompt_tool` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_prompt_tool(%DeletePromptTool.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptTool)

    payload =
      %{
        "action" => "delete_prompt_tool",
        "input" => DeletePromptTool.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptTool.from_json/1, nil)
    end
  end


  @doc """
  Combined: scrape website + discover links + structure profile in one step

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def discover_and_extract_profile(%DiscoverAndExtractProfile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "discover_and_extract_profile",
        "input" => DiscoverAndExtractProfile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Discover social media links and official website for an entity using AI with confidence scores

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def discover_entity_links(%DiscoverEntityLinks.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "discover_entity_links",
        "input" => DiscoverEntityLinks.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `edit_asset_image` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def edit_asset_image(%EditAssetImage.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginAsset)

    payload =
      %{
        "action" => "edit_asset_image",
        "input" => EditAssetImage.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginAsset.from_json/1, nil)
    end
  end


  @doc """
  Generate conversation starters from episode transcript or origin profile using AI

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def generate_conversation_starters(%GenerateConversationStarters.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SoulConfig)

    payload =
      %{
        "action" => "generate_conversation_starters",
        "input" => GenerateConversationStarters.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SoulConfig.from_json/1, nil)
    end
  end


  @doc """
  Generate or enhance a profile description using AI

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def generate_profile_description(%GenerateProfileDescription.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "generate_profile_description",
        "input" => GenerateProfileDescription.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Generate AI soul configuration (personality, purpose, speaking style, etc.)

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def generate_soul_config(%GenerateSoulConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "generate_soul_config",
        "input" => GenerateSoulConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Get memberships inherited from any ancestor Origin (excluding self)

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_inherited_memberships(%GetInheritedMemberships.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "get_inherited_memberships",
        "input" => GetInheritedMemberships.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_membership_by_token` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_membership_by_token(%GetMembershipByToken.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "get_membership_by_token",
        "input" => GetMembershipByToken.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  List memberships for an Origin, including memberships on any ancestor (cascading down)

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_memberships_for_origin(%GetMembershipsForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "get_memberships_for_origin",
        "input" => GetMembershipsForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_memberships_for_user` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_memberships_for_user(%GetMembershipsForUser.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "get_memberships_for_user",
        "input" => GetMembershipsForUser.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_origin_entity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_origin_entity(%GetOriginEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "get_origin_entity",
        "input" => GetOriginEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_origin_entity_by_slug` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_origin_entity_by_slug(%GetOriginEntityBySlug.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "get_origin_entity_by_slug",
        "input" => GetOriginEntityBySlug.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_origin_entity_membership` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_origin_entity_membership(%GetOriginEntityMembership.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "get_origin_entity_membership",
        "input" => GetOriginEntityMembership.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_pending_memberships` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_pending_memberships(%GetPendingMemberships.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "get_pending_memberships",
        "input" => GetPendingMemberships.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_prompt_context_public_title` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_prompt_context_public_title(%GetPromptContextPublicTitle.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptContext)

    payload =
      %{
        "action" => "get_prompt_context_public_title",
        "input" => GetPromptContextPublicTitle.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptContext.from_json/1, nil)
    end
  end


  @doc """
  Fetch a single public Origin by id, regardless of the request's
  pinned tenant. The `is_public == true` filter is the security
  boundary — any actor (signed-in or anonymous) may resolve a public
  OE in any tenant via this action.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_public_origin_entity(%GetPublicOriginEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "get_public_origin_entity",
        "input" => GetPublicOriginEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Invite a user to an Origin by email

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def invite_to_origin(%InviteToOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "invite_to_origin",
        "input" => InviteToOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_cartesia_voices` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_cartesia_voices(%ListCartesiaVoices.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "list_cartesia_voices",
        "input" => ListCartesiaVoices.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_chat_configs` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_chat_configs(%ListChatConfigs.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatConfig)

    payload =
      %{
        "action" => "list_chat_configs",
        "input" => ListChatConfigs.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_origin_assets` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_origin_assets(%ListOriginAssets.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginAsset)

    payload =
      %{
        "action" => "list_origin_assets",
        "input" => ListOriginAssets.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginAsset.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_origin_entities` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_origin_entities(%ListOriginEntities.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "list_origin_entities",
        "input" => ListOriginEntities.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Every OriginEntity the actor can act on across tenants — used to
  populate the unified Switcher's full tree.
  
  Returns OEs from: (a) the actor's home tenant, (b) tenants the
  actor has an active StaffTenantGrant on, (c) every tenant if the
  actor is a super-admin. `multitenancy :bypass` lets the query span
  tenants regardless of the request's pinned tenant; the filter below
  is the cross-tenant access boundary.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_origin_entities_for_switcher(%ListOriginEntitiesForSwitcher.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "list_origin_entities_for_switcher",
        "input" => ListOriginEntitiesForSwitcher.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  List Origins accessible to the current user (direct membership or ancestor membership)

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_origin_entities_for_user(%ListOriginEntitiesForUser.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "list_origin_entities_for_user",
        "input" => ListOriginEntitiesForUser.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_origin_entity_memberships` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_origin_entity_memberships(%ListOriginEntityMemberships.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "list_origin_entity_memberships",
        "input" => ListOriginEntityMemberships.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_prompt_contexts_for_origin` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_prompt_contexts_for_origin(%ListPromptContextsForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptContext)

    payload =
      %{
        "action" => "list_prompt_contexts_for_origin",
        "input" => ListPromptContextsForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptContext.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_prompt_tools_for_origin` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_prompt_tools_for_origin(%ListPromptToolsForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptTool)

    payload =
      %{
        "action" => "list_prompt_tools_for_origin",
        "input" => ListPromptToolsForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptTool.from_json/1, nil)
    end
  end


  @doc """
  List only public Origins, across every tenant.
  
  Public means public — a request pinned to tenant A (e.g. a super-admin
  with tenant A selected in the switcher) must still resolve a public
  avatar that lives in tenant B when hitting the apex chat URL.
  `multitenancy :bypass` lets the query span tenants regardless of the
  request's pinned tenant; the `is_public == true` filter is the access
  boundary. Mirrors `:get_public`.
  

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_public_origin_entities(%ListPublicOriginEntities.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "list_public_origin_entities",
        "input" => ListPublicOriginEntities.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_setup_progress` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_setup_progress(%ListSetupProgress.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SetupProgress)

    payload =
      %{
        "action" => "list_setup_progress",
        "input" => ListSetupProgress.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SetupProgress.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_soul_configs` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_soul_configs(%ListSoulConfigs.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SoulConfig)

    payload =
      %{
        "action" => "list_soul_configs",
        "input" => ListSoulConfigs.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SoulConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_user_profiles` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_user_profiles(%ListUserProfiles.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, UserProfile)

    payload =
      %{
        "action" => "list_user_profiles",
        "input" => ListUserProfiles.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &UserProfile.from_json/1, nil)
    end
  end


  @doc """
  Scrape and extract content from a website URL

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def scrape_website_content(%ScrapeWebsiteContent.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "scrape_website_content",
        "input" => ScrapeWebsiteContent.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Transcribe audio data to text

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def speech_to_text(%SpeechToText.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "speech_to_text",
        "input" => SpeechToText.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Suspend a membership

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def suspend_membership(%SuspendMembership.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "suspend_membership",
        "input" => SuspendMembership.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Generate speech from text using Cartesia API

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def text_to_speech(%TextToSpeech.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "text_to_speech",
        "input" => TextToSpeech.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_chat_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_chat_config(%UpdateChatConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ChatConfig)

    payload =
      %{
        "action" => "update_chat_config",
        "input" => UpdateChatConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ChatConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_origin_asset` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_origin_asset(%UpdateOriginAsset.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginAsset)

    payload =
      %{
        "action" => "update_origin_asset",
        "input" => UpdateOriginAsset.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginAsset.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_origin_entity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_origin_entity(%UpdateOriginEntity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "update_origin_entity",
        "input" => UpdateOriginEntity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_origin_entity_membership` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_origin_entity_membership(%UpdateOriginEntityMembership.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntityMembership)

    payload =
      %{
        "action" => "update_origin_entity_membership",
        "input" => UpdateOriginEntityMembership.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntityMembership.from_json/1, nil)
    end
  end


  @doc """
  Update profile config without triggering Letta folder provisioning

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_origin_entity_profile_config(%UpdateOriginEntityProfileConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, OriginEntity)

    payload =
      %{
        "action" => "update_origin_entity_profile_config",
        "input" => UpdateOriginEntityProfileConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &OriginEntity.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_prompt_context` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_prompt_context(%UpdatePromptContext.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptContext)

    payload =
      %{
        "action" => "update_prompt_context",
        "input" => UpdatePromptContext.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptContext.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_prompt_tool` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_prompt_tool(%UpdatePromptTool.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PromptTool)

    payload =
      %{
        "action" => "update_prompt_tool",
        "input" => UpdatePromptTool.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PromptTool.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_setup_progress` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_setup_progress(%UpdateSetupProgress.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SetupProgress)

    payload =
      %{
        "action" => "update_setup_progress",
        "input" => UpdateSetupProgress.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SetupProgress.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_soul_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_soul_config(%UpdateSoulConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, SoulConfig)

    payload =
      %{
        "action" => "update_soul_config",
        "input" => UpdateSoulConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &SoulConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_user_profile` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_user_profile(%UpdateUserProfile.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, UserProfile)

    payload =
      %{
        "action" => "update_user_profile",
        "input" => UpdateUserProfile.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &UserProfile.from_json/1, nil)
    end
  end


  defp normalize_fields(:all, schema), do: schema.primitive_fields()
  defp normalize_fields(list, _) when is_list(list), do: list

  defp encode_fields(fields) do
    Enum.map(fields, fn
      atom when is_atom(atom) -> Atom.to_string(atom)
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
