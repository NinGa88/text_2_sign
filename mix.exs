defmodule Text2Sign.Mixfile do
  use Mix.Project

  def project do
    [
      app: :text_2_sign,
      version: "0.1.1",
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
      [
        {:httpoison, "~> 1.8"}, 
        {:floki, "~> 0.36"}, 
        {:phoenix, "~> 1.5.9"},
        {:phoenix_pubsub, "~> 2.0"},
        {:phoenix_html, "~> 2.11"},
        {:phoenix_live_view, "~> 0.15.4"},
        {:phoenix_live_dashboard, "~> 0.4"},
        {:telemetry_metrics, "~> 0.4"},
        {:telemetry_poller, "~> 0.4"},
        {:gettext, "~> 0.18"},
        {:jason, "~> 1.2"},
        {:plug_cowboy, "~> 2.5"},
        {:mock, "~> 0.2.0", only: :test}
      ]
  end
end
