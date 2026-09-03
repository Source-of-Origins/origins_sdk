defmodule OriginsSdk.MixProject do
  use Mix.Project

  @version "0.24.14"

  def project do
    [
      app: :origins_sdk,
      version: @version,
      elixir: "~> 1.15",
      deps: deps(),
      description: "Elixir client SDK for Origins. Generated — do not edit by hand."
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [
      {:req, "~> 0.5"},
      {:jason, "~> 1.4"},
      {:castore, "~> 1.0"},
      {:mint_web_socket, "~> 1.0"}
    ]
  end
end
