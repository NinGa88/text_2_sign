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
        {:phoenix, "~> 1.7.14"},
        {:phoenix_ecto, "~> 4.5"},
        {:ecto_sql, "~> 3.10"},
        {:postgrex, ">= 0.17.0"},
        {:floki, "~> 0.36"},
        {:phoenix_live_view, "~> 0.19"},
        {:phoenix_live_dashboard, "~> 0.8.4"},
        {:esbuild, "~> 0.8", runtime: Mix.env() == :dev},
        {:tailwind, "~> 0.2", runtime: Mix.env() == :dev},
        {:heroicons,
         github: "tailwindlabs/heroicons",
         tag: "v2.1.1",
         sparse: "optimized",
         app: false,
         compile: false,
         depth: 1},
        {:httpoison, "~> 1.8"},
        {:swoosh, "~> 1.5"},
        {:finch, "~> 0.13"},
        {:telemetry_metrics, "~> 1.0"},
        {:telemetry_poller, "~> 1.0"},
        {:gettext, "~> 0.20"},
        {:jason, "~> 1.2"},
        {:dns_cluster, "~> 0.1.1"},
        {:bandit, "~> 1.5"},
        {:mock, "~> 0.2.0", only: :test}
      ]
  end
end
