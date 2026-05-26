defmodule OriginsSdk.Podcasts do
  @moduledoc """
  RPC actions on the `Origins.Podcasts` domain. Generated — do not edit by hand.
  """

  alias OriginsSdk.{Client, Error}
  alias OriginsSdk.Podcasts.CreatePodcastConfig
  alias OriginsSdk.Podcasts.CreateYoutubeEpisode
  alias OriginsSdk.Podcasts.DeleteYoutubeEpisode
  alias OriginsSdk.Podcasts.FetchYoutubeSingleVideo
  alias OriginsSdk.Podcasts.FetchYoutubeTranscript
  alias OriginsSdk.Podcasts.GetPodcastEpisodeSettingsForCharacter
  alias OriginsSdk.Podcasts.GetPodcastEpisodeSettingsForPodcastConfig
  alias OriginsSdk.Podcasts.GetYoutubeEpisode
  alias OriginsSdk.Podcasts.ListPodcastConfigs
  alias OriginsSdk.Podcasts.ListPodcastEpisodeSettings
  alias OriginsSdk.Podcasts.ListYoutubeEpisodes
  alias OriginsSdk.Podcasts.PodcastConfig
  alias OriginsSdk.Podcasts.PodcastEpisodeSettings
  alias OriginsSdk.Podcasts.SyncPodcastEpisodes
  alias OriginsSdk.Podcasts.UpdatePodcastConfig
  alias OriginsSdk.Podcasts.UpdateYoutubeEpisode
  alias OriginsSdk.Podcasts.UpsertPodcastEpisodeSettings
  alias OriginsSdk.Podcasts.YoutubeEpisode
  alias OriginsSdk.Podcasts.YoutubeFetchPublicData

  @doc """
  Run the `create_podcast_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_podcast_config(%CreatePodcastConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastConfig)

    payload =
      %{
        "action" => "create_podcast_config",
        "input" => CreatePodcastConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `create_youtube_episode` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def create_youtube_episode(%CreateYoutubeEpisode.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "create_youtube_episode",
        "input" => CreateYoutubeEpisode.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Run the `delete_youtube_episode` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def delete_youtube_episode(%DeleteYoutubeEpisode.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "delete_youtube_episode",
        "input" => DeleteYoutubeEpisode.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Fetch a single video from YouTube and save it as an episode

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def fetch_youtube_single_video(%FetchYoutubeSingleVideo.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "fetch_youtube_single_video",
        "input" => FetchYoutubeSingleVideo.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Fetch transcript/captions from a YouTube video

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def fetch_youtube_transcript(%FetchYoutubeTranscript.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "fetch_youtube_transcript",
        "input" => FetchYoutubeTranscript.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_podcast_episode_settings_for_character` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_podcast_episode_settings_for_character(%GetPodcastEpisodeSettingsForCharacter.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastEpisodeSettings)

    payload =
      %{
        "action" => "get_podcast_episode_settings_for_character",
        "input" => GetPodcastEpisodeSettingsForCharacter.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastEpisodeSettings.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_podcast_episode_settings_for_podcast_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_podcast_episode_settings_for_podcast_config(%GetPodcastEpisodeSettingsForPodcastConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastEpisodeSettings)

    payload =
      %{
        "action" => "get_podcast_episode_settings_for_podcast_config",
        "input" => GetPodcastEpisodeSettingsForPodcastConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastEpisodeSettings.from_json/1, nil)
    end
  end


  @doc """
  Run the `get_youtube_episode` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def get_youtube_episode(%GetYoutubeEpisode.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "get_youtube_episode",
        "input" => GetYoutubeEpisode.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_podcast_configs` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_podcast_configs(%ListPodcastConfigs.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastConfig)

    payload =
      %{
        "action" => "list_podcast_configs",
        "input" => ListPodcastConfigs.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_podcast_episode_settings` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_podcast_episode_settings(%ListPodcastEpisodeSettings.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastEpisodeSettings)

    payload =
      %{
        "action" => "list_podcast_episode_settings",
        "input" => ListPodcastEpisodeSettings.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastEpisodeSettings.from_json/1, nil)
    end
  end


  @doc """
  Run the `list_youtube_episodes` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def list_youtube_episodes(%ListYoutubeEpisodes.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "list_youtube_episodes",
        "input" => ListYoutubeEpisodes.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Sync YouTube playlist episodes

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def sync_podcast_episodes(%SyncPodcastEpisodes.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastConfig)

    payload =
      %{
        "action" => "sync_podcast_episodes",
        "input" => SyncPodcastEpisodes.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_podcast_config` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_podcast_config(%UpdatePodcastConfig.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastConfig)

    payload =
      %{
        "action" => "update_podcast_config",
        "input" => UpdatePodcastConfig.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastConfig.from_json/1, nil)
    end
  end


  @doc """
  Run the `update_youtube_episode` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def update_youtube_episode(%UpdateYoutubeEpisode.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "update_youtube_episode",
        "input" => UpdateYoutubeEpisode.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
    end
  end


  @doc """
  Run the `upsert_podcast_episode_settings` action.

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def upsert_podcast_episode_settings(%UpsertPodcastEpisodeSettings.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, PodcastEpisodeSettings)

    payload =
      %{
        "action" => "upsert_podcast_episode_settings",
        "input" => UpsertPodcastEpisodeSettings.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &PodcastEpisodeSettings.from_json/1, nil)
    end
  end


  @doc """
  Fetch public data from a YouTube channel URL and upsert episodes

  ## Options
    * `:fields` — fields to return (default: `:all` primitive fields).
    * `:metadata_fields` — metadata atoms to include.
    * `:tenant` — tenant identifier.
    * `:client` — `%OriginsSdk.Client{}` override.
  """
  def youtube_fetch_public_data(%YoutubeFetchPublicData.Input{} = input, opts \\ []) do
    fields = normalize_fields(opts[:fields] || :all, YoutubeEpisode)

    payload =
      %{
        "action" => "youtube_fetch_public_data",
        "input" => YoutubeFetchPublicData.Input.to_json(input),
        "fields" => encode_fields(fields)
      }
      |> maybe_put("tenant", opts[:tenant])

    with {:ok, body} <- Client.run(payload, opts) do
      decode_action_response(body, &YoutubeEpisode.from_json/1, nil)
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
