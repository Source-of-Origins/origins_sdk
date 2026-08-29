defmodule OriginsSdk.Apps do
  @moduledoc """
  RPC actions on the `Origins.Apps` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Apps.AdvanceEnrollmentSession
  alias OriginsSdk.Apps.AnswerActivityPrompt
  alias OriginsSdk.Apps.App
  alias OriginsSdk.Apps.AssessmentGraph
  alias OriginsSdk.Apps.AssessmentResponse
  alias OriginsSdk.Apps.AuthoringDocument
  alias OriginsSdk.Apps.CoachingTypes
  alias OriginsSdk.Apps.CompleteActivityStep
  alias OriginsSdk.Apps.CompleteAssessment
  alias OriginsSdk.Apps.CompleteEnrollment
  alias OriginsSdk.Apps.CourseActivityCompletion
  alias OriginsSdk.Apps.CourseEnrollment
  alias OriginsSdk.Apps.CourseEntitlement
  alias OriginsSdk.Apps.CreateApp
  alias OriginsSdk.Apps.CreateAppFromTemplate
  alias OriginsSdk.Apps.CreateAssessmentResponse
  alias OriginsSdk.Apps.CreateAssessmentResponseAtActivity
  alias OriginsSdk.Apps.CreateEnrollment
  alias OriginsSdk.Apps.CreateProgramTest
  alias OriginsSdk.Apps.CreateWebhookSubscription
  alias OriginsSdk.Apps.DailyBriefing
  alias OriginsSdk.Apps.DestroyApp
  alias OriginsSdk.Apps.DestroyProgramTest
  alias OriginsSdk.Apps.DestroyWebhookSubscription
  alias OriginsSdk.Apps.DuplicateApp
  alias OriginsSdk.Apps.EnrollmentCompletions
  alias OriginsSdk.Apps.FindEnrollment
  alias OriginsSdk.Apps.ForUserPersonalized
  alias OriginsSdk.Apps.GatedCoursePayload
  alias OriginsSdk.Apps.GatedPersonalizedCourseForUser
  alias OriginsSdk.Apps.GetApp
  alias OriginsSdk.Apps.GetAppForOriginTypeAndSlug
  alias OriginsSdk.Apps.GetAssessmentGraph
  alias OriginsSdk.Apps.GetAssessmentResponseAtActivity
  alias OriginsSdk.Apps.GetEnrollment
  alias OriginsSdk.Apps.GetEnrollmentCompletions
  alias OriginsSdk.Apps.GetMyAssessmentResponse
  alias OriginsSdk.Apps.GetProgram
  alias OriginsSdk.Apps.GetProgramAssessment
  alias OriginsSdk.Apps.GetProgramMemory
  alias OriginsSdk.Apps.GetProgramTestCredentials
  alias OriginsSdk.Apps.InitializePersonalization
  alias OriginsSdk.Apps.ListAppLibraryVfsPaths
  alias OriginsSdk.Apps.ListAppTemplates
  alias OriginsSdk.Apps.ListAppTemplatesForType
  alias OriginsSdk.Apps.ListAppVersions
  alias OriginsSdk.Apps.ListAppsForOrigin
  alias OriginsSdk.Apps.ListAppsForOriginAndType
  alias OriginsSdk.Apps.ListAssessmentResponsesForEnrollment
  alias OriginsSdk.Apps.ListMyEntitlements
  alias OriginsSdk.Apps.ListProgramTests
  alias OriginsSdk.Apps.ListSellablePlansForApp
  alias OriginsSdk.Apps.ListWebhookDeliveries
  alias OriginsSdk.Apps.ListWebhookSubscriptions
  alias OriginsSdk.Apps.MarkBriefingRead
  alias OriginsSdk.Apps.ParseAuthoringDocument
  alias OriginsSdk.Apps.PauseEnrollment
  alias OriginsSdk.Apps.Plan
  alias OriginsSdk.Apps.ProgramTest
  alias OriginsSdk.Apps.PublishApp
  alias OriginsSdk.Apps.ReactivateEnrollment
  alias OriginsSdk.Apps.RegeneratePersonalization
  alias OriginsSdk.Apps.RestoreAppVersion
  alias OriginsSdk.Apps.ResumeEnrollment
  alias OriginsSdk.Apps.SendAppChatMessage
  alias OriginsSdk.Apps.SendTestWebhook
  alias OriginsSdk.Apps.StartEnrollment
  alias OriginsSdk.Apps.StartProgramTestRun
  alias OriginsSdk.Apps.SyncAssessmentProgress
  alias OriginsSdk.Apps.Template
  alias OriginsSdk.Apps.UnpublishApp
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
  Type source for the coaching payload shapes the LiveView serializer sends
  to the Vue app. Nested lists and objects are declared inline in the field
  constraints (`Origins.Apps.CoachingTypesShape`), so ash_typescript emits
  fully typed nested shapes and `assets/vue/coaching/types.ts` derives every
  export by indexed access instead of hand-typing. The coaching app is served
  over LiveView, so this action is never invoked at runtime.
  

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def coaching_types(%CoachingTypes.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "coaching_types",
        "input" => CoachingTypes.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
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
  Run the `create_assessment_response_at_activity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_assessment_response_at_activity(%CreateAssessmentResponseAtActivity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "create_assessment_response_at_activity",
        "input" => CreateAssessmentResponseAtActivity.Input.to_json(input),
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
  Run the `create_program_test` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_program_test(%CreateProgramTest.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ProgramTest)

    payload =
      %{
        "action" => "create_program_test",
        "input" => CreateProgramTest.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ProgramTest.from_json/1, nil)
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
  Run the `daily_briefing` action.

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `DailyBriefing` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def daily_briefing(%DailyBriefing.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "daily_briefing",
        "input" => DailyBriefing.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &DailyBriefing.from_json/1, nil)
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
  Run the `destroy_program_test` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def destroy_program_test(%DestroyProgramTest.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ProgramTest)

    payload =
      %{
        "action" => "destroy_program_test",
        "input" => DestroyProgramTest.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ProgramTest.from_json/1, nil)
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
  Run the `gated_personalized_course_for_user` action.

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `GatedCoursePayload` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def gated_personalized_course_for_user(%GatedPersonalizedCourseForUser.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "gated_personalized_course_for_user",
        "input" => GatedPersonalizedCourseForUser.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &GatedCoursePayload.from_json/1, nil)
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
  Run the `get_assessment_response_at_activity` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_assessment_response_at_activity(%GetAssessmentResponseAtActivity.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "get_assessment_response_at_activity",
        "input" => GetAssessmentResponseAtActivity.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentResponse.from_list/1, nil)
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
  A program and the step apps its flow references, grouped by page type

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def get_program(%GetProgram.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_program",
        "input" => GetProgram.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `get_program_assessment` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def get_program_assessment(%GetProgramAssessment.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_program_assessment",
        "input" => GetProgramAssessment.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `get_program_memory` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def get_program_memory(%GetProgramMemory.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_program_memory",
        "input" => GetProgramMemory.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `get_program_test_credentials` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def get_program_test_credentials(%GetProgramTestCredentials.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "get_program_test_credentials",
        "input" => GetProgramTestCredentials.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `initialize_personalization` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def initialize_personalization(%InitializePersonalization.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "initialize_personalization",
        "input" => InitializePersonalization.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
    end
  end


  @doc """
  Run the `list_app_library_vfs_paths` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def list_app_library_vfs_paths(%ListAppLibraryVfsPaths.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "list_app_library_vfs_paths",
        "input" => ListAppLibraryVfsPaths.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
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
  Run the `list_assessment_responses_for_enrollment` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_assessment_responses_for_enrollment(%ListAssessmentResponsesForEnrollment.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, AssessmentResponse)

    payload =
      %{
        "action" => "list_assessment_responses_for_enrollment",
        "input" => ListAssessmentResponsesForEnrollment.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AssessmentResponse.from_list/1, nil)
    end
  end


  @doc """
  Every live entitlement the reading learner holds, app-level and plan-level.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_my_entitlements(%ListMyEntitlements.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, CourseEntitlement)

    payload =
      %{
        "action" => "list_my_entitlements",
        "input" => ListMyEntitlements.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &CourseEntitlement.from_list/1, nil)
    end
  end


  @doc """
  Run the `list_program_tests` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_program_tests(%ListProgramTests.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, ProgramTest)

    payload =
      %{
        "action" => "list_program_tests",
        "input" => ListProgramTests.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &ProgramTest.from_list/1, nil)
    end
  end


  @doc """
  The plans still on sale that unlock a given app.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_sellable_plans_for_app(%ListSellablePlansForApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, Plan)

    payload =
      %{
        "action" => "list_sellable_plans_for_app",
        "input" => ListSellablePlansForApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &Plan.from_list/1, nil)
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
  Run the `mark_briefing_read` action.

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `DailyBriefing` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def mark_briefing_read(%MarkBriefingRead.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "mark_briefing_read",
        "input" => MarkBriefingRead.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &DailyBriefing.from_json/1, nil)
    end
  end


  @doc """
  Run the `parse_authoring_document` action.

  ## Options
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action returns an embedded `AuthoringDocument` (a fixed shape, no
  field selection), decoded from the response body.
  """
  def parse_authoring_document(%ParseAuthoringDocument.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "parse_authoring_document",
        "input" => ParseAuthoringDocument.Input.to_json(input)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &AuthoringDocument.from_json/1, nil)
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
  Run the `publish_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def publish_app(%PublishApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "publish_app",
        "input" => PublishApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
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
  Run the `regenerate_personalization` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def regenerate_personalization(%RegeneratePersonalization.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "regenerate_personalization",
        "input" => RegeneratePersonalization.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
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
  Run the `start_program_test_run` action.

  ## Options
    * `:fields` — passthrough field list; omitted from the request unless given.
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.

  The action's declared return is not a single resource, so `data` is
  returned undecoded (a raw map or list).
  """
  def start_program_test_run(%StartProgramTestRun.Input{} = input, opts \\ []) do
    payload =
      %{
        "action" => "start_program_test_run",
        "input" => StartProgramTestRun.Input.to_json(input)
      }
      |> maybe_put("fields", opts[:fields] && encode_fields(opts[:fields]))
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, & &1, nil)
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
  Run the `unpublish_app` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def unpublish_app(%UnpublishApp.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, App)

    payload =
      %{
        "action" => "unpublish_app",
        "input" => UnpublishApp.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &App.from_json/1, nil)
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
