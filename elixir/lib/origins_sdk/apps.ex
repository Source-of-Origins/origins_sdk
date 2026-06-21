defmodule OriginsSdk.Apps do
  @moduledoc """
  RPC actions on the `Origins.Apps` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Apps.AdvanceEnrollmentSession
  alias OriginsSdk.Apps.AnswerActivityPrompt
  alias OriginsSdk.Apps.App
  alias OriginsSdk.Apps.AppLibrary
  alias OriginsSdk.Apps.AssessmentGraph
  alias OriginsSdk.Apps.AssessmentResponse
  alias OriginsSdk.Apps.AttachLibraryToApp
  alias OriginsSdk.Apps.CompleteActivityStep
  alias OriginsSdk.Apps.CompleteAssessment
  alias OriginsSdk.Apps.CompleteEnrollment
  alias OriginsSdk.Apps.CourseActivityCompletion
  alias OriginsSdk.Apps.CourseEnrollment
  alias OriginsSdk.Apps.CreateApp
  alias OriginsSdk.Apps.CreateAppFromTemplate
  alias OriginsSdk.Apps.CreateAssessmentResponse
  alias OriginsSdk.Apps.CreateEnrollment
  alias OriginsSdk.Apps.CreateWebhookSubscription
  alias OriginsSdk.Apps.DestroyApp
  alias OriginsSdk.Apps.DestroyWebhookSubscription
  alias OriginsSdk.Apps.DetachLibraryFromApp
  alias OriginsSdk.Apps.DuplicateApp
  alias OriginsSdk.Apps.EnrollmentCompletions
  alias OriginsSdk.Apps.FindEnrollment
  alias OriginsSdk.Apps.ForUserPersonalized
  alias OriginsSdk.Apps.GetApp
  alias OriginsSdk.Apps.GetAppForOriginTypeAndSlug
  alias OriginsSdk.Apps.GetAssessmentGraph
  alias OriginsSdk.Apps.GetEnrollment
  alias OriginsSdk.Apps.GetEnrollmentCompletions
  alias OriginsSdk.Apps.GetMyAssessmentResponse
  alias OriginsSdk.Apps.ListAppLibraries
  alias OriginsSdk.Apps.ListAppTemplates
  alias OriginsSdk.Apps.ListAppTemplatesForType
  alias OriginsSdk.Apps.ListAppVersions
  alias OriginsSdk.Apps.ListAppsForOrigin
  alias OriginsSdk.Apps.ListAppsForOriginAndType
  alias OriginsSdk.Apps.ListLibrariesForApp
  alias OriginsSdk.Apps.ListWebhookDeliveries
  alias OriginsSdk.Apps.ListWebhookSubscriptions
  alias OriginsSdk.Apps.ParseAssessmentBlocks
  alias OriginsSdk.Apps.ParseCourseBlocks
  alias OriginsSdk.Apps.ParseLandingBlocks
  alias OriginsSdk.Apps.PauseEnrollment
  alias OriginsSdk.Apps.ReactivateEnrollment
  alias OriginsSdk.Apps.RestoreAppVersion
  alias OriginsSdk.Apps.ResumeEnrollment
  alias OriginsSdk.Apps.SendAppChatMessage
  alias OriginsSdk.Apps.SendTestWebhook
  alias OriginsSdk.Apps.StartEnrollment
  alias OriginsSdk.Apps.SyncAssessmentProgress
  alias OriginsSdk.Apps.Template
  alias OriginsSdk.Apps.UpdateApp
  alias OriginsSdk.Apps.UpdateWebhookSubscription
  alias OriginsSdk.Apps.Version
  alias OriginsSdk.Apps.WebhookDelivery
  alias OriginsSdk.Apps.WebhookSubscription

  @doc """
  Run the `advance_enrollment_session` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def advance_enrollment_session(%AdvanceEnrollmentSession.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "advance_enrollment_session",
        "input" => AdvanceEnrollmentSession.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Run the `answer_activity_prompt` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def answer_activity_prompt(%AnswerActivityPrompt.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseActivityCompletion)

    payload =
      %{
        "action" => "answer_activity_prompt",
        "input" => AnswerActivityPrompt.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseActivityCompletion.from_json/1, nil)
    end
  end


  @doc """
  Run the `attach_library_to_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def attach_library_to_app(%AttachLibraryToApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "attach_library_to_app",
        "input" => AttachLibraryToApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_json/1, nil)
    end
  end


  @doc """
  Run the `complete_activity_step` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def complete_activity_step(%CompleteActivityStep.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseActivityCompletion)

    payload =
      %{
        "action" => "complete_activity_step",
        "input" => CompleteActivityStep.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseActivityCompletion.from_json/1, nil)
    end
  end


  @doc """
  Run the `complete_assessment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def complete_assessment(%CompleteAssessment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "complete_assessment",
        "input" => CompleteAssessment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentResponse.from_json/1, nil)
    end
  end


  @doc """
  Run the `complete_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def complete_enrollment(%CompleteEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "complete_enrollment",
        "input" => CompleteEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_app(%CreateApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "create_app",
        "input" => CreateApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Create a new instance seeded from an `Apps.Template`. Title defaults to the template name (numeric suffix on collision); slug is derived from title.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_app_from_template(%CreateAppFromTemplate.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "create_app_from_template",
        "input" => CreateAppFromTemplate.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_assessment_response` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_assessment_response(%CreateAssessmentResponse.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "create_assessment_response",
        "input" => CreateAssessmentResponse.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentResponse.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_enrollment(%CreateEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "create_enrollment",
        "input" => CreateEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_webhook_subscription` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_webhook_subscription(%CreateWebhookSubscription.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WebhookSubscription)

    payload =
      %{
        "action" => "create_webhook_subscription",
        "input" => CreateWebhookSubscription.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WebhookSubscription.from_json/1, nil)
    end
  end


  @doc """
  Run the `destroy_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def destroy_app(%DestroyApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "destroy_app",
        "input" => DestroyApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `destroy_webhook_subscription` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def destroy_webhook_subscription(%DestroyWebhookSubscription.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WebhookSubscription)

    payload =
      %{
        "action" => "destroy_webhook_subscription",
        "input" => DestroyWebhookSubscription.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WebhookSubscription.from_json/1, nil)
    end
  end


  @doc """
  Run the `detach_library_from_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def detach_library_from_app(%DetachLibraryFromApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "detach_library_from_app",
        "input" => DetachLibraryFromApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_json/1, nil)
    end
  end


  @doc """
  Clone an existing instance. Title becomes `Copy of <original>` (numeric suffix on collision); full content carried over; not published.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def duplicate_app(%DuplicateApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "duplicate_app",
        "input" => DuplicateApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `find_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def find_enrollment(%FindEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "find_enrollment",
        "input" => FindEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_list/1, nil)
    end
  end


  @doc """
  Run the `for_user_personalized` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def for_user_personalized(%ForUserPersonalized.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "for_user_personalized",
        "input" => ForUserPersonalized.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `get_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_app(%GetApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "get_app",
        "input" => GetApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_app_for_origin_type_and_slug` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_app_for_origin_type_and_slug(%GetAppForOriginTypeAndSlug.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "get_app_for_origin_type_and_slug",
        "input" => GetAppForOriginTypeAndSlug.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_assessment_graph` action.

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `AssessmentGraph` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def get_assessment_graph(%GetAssessmentGraph.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_assessment_graph",
        "input" => GetAssessmentGraph.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentGraph.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_enrollment(%GetEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "get_enrollment",
        "input" => GetEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_enrollment_completions` action.

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `EnrollmentCompletions` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def get_enrollment_completions(%GetEnrollmentCompletions.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_enrollment_completions",
        "input" => GetEnrollmentCompletions.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &EnrollmentCompletions.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_my_assessment_response` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_my_assessment_response(%GetMyAssessmentResponse.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "get_my_assessment_response",
        "input" => GetMyAssessmentResponse.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentResponse.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_app_libraries` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_libraries(%ListAppLibraries.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "list_app_libraries",
        "input" => ListAppLibraries.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_app_templates` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_templates(%ListAppTemplates.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Template)

    payload =
      %{
        "action" => "list_app_templates",
        "input" => ListAppTemplates.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Template.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_app_templates_for_type` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_templates_for_type(%ListAppTemplatesForType.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Template)

    payload =
      %{
        "action" => "list_app_templates_for_type",
        "input" => ListAppTemplatesForType.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Template.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_app_versions` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_app_versions(%ListAppVersions.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Version)

    payload =
      %{
        "action" => "list_app_versions",
        "input" => ListAppVersions.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Version.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_apps_for_origin` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_apps_for_origin(%ListAppsForOrigin.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "list_apps_for_origin",
        "input" => ListAppsForOrigin.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_apps_for_origin_and_type` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_apps_for_origin_and_type(%ListAppsForOriginAndType.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "list_apps_for_origin_and_type",
        "input" => ListAppsForOriginAndType.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_list/1, nil)
    end
  end


  @doc """
  All libraries attached to a given expert page.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_libraries_for_app(%ListLibrariesForApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AppLibrary)

    payload =
      %{
        "action" => "list_libraries_for_app",
        "input" => ListLibrariesForApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AppLibrary.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_webhook_deliveries` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_webhook_deliveries(%ListWebhookDeliveries.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WebhookDelivery)

    payload =
      %{
        "action" => "list_webhook_deliveries",
        "input" => ListWebhookDeliveries.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WebhookDelivery.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_webhook_subscriptions` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_webhook_subscriptions(%ListWebhookSubscriptions.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WebhookSubscription)

    payload =
      %{
        "action" => "list_webhook_subscriptions",
        "input" => ListWebhookSubscriptions.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WebhookSubscription.from_list/1, nil)
    end
  end


  @doc """
  Run the `parse_assessment_blocks` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def parse_assessment_blocks(%ParseAssessmentBlocks.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "parse_assessment_blocks",
        "input" => ParseAssessmentBlocks.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `parse_course_blocks` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def parse_course_blocks(%ParseCourseBlocks.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "parse_course_blocks",
        "input" => ParseCourseBlocks.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `parse_landing_blocks` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def parse_landing_blocks(%ParseLandingBlocks.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "parse_landing_blocks",
        "input" => ParseLandingBlocks.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `pause_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def pause_enrollment(%PauseEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "pause_enrollment",
        "input" => PauseEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Run the `reactivate_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def reactivate_enrollment(%ReactivateEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "reactivate_enrollment",
        "input" => ReactivateEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Restore content from a paper trail version snapshot

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def restore_app_version(%RestoreAppVersion.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "restore_app_version",
        "input" => RestoreAppVersion.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `resume_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def resume_enrollment(%ResumeEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "resume_enrollment",
        "input" => ResumeEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Send a chat message to the expert page's persistent Letta agent

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def send_app_chat_message(%SendAppChatMessage.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "send_app_chat_message",
        "input" => SendAppChatMessage.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Synchronously POST a signed sample payload to this subscription's URL; returns the HTTP result.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def send_test_webhook(%SendTestWebhook.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "send_test_webhook",
        "input" => SendTestWebhook.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `start_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def start_enrollment(%StartEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEnrollment)

    payload =
      %{
        "action" => "start_enrollment",
        "input" => StartEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEnrollment.from_json/1, nil)
    end
  end


  @doc """
  Run the `sync_assessment_progress` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def sync_assessment_progress(%SyncAssessmentProgress.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "sync_assessment_progress",
        "input" => SyncAssessmentProgress.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentResponse.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_app(%UpdateApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "update_app",
        "input" => UpdateApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_webhook_subscription` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_webhook_subscription(%UpdateWebhookSubscription.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, WebhookSubscription)

    payload =
      %{
        "action" => "update_webhook_subscription",
        "input" => UpdateWebhookSubscription.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &WebhookSubscription.from_json/1, nil)
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
