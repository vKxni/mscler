defmodule Mscler.MixProject do
  use Mix.Project

  @github_url "https://github.com/vKxni/mscler"

  def project do
    [
      app: :mscler,
      version: "1.2.0",
      description: "The Mscle Elixir Wrapper",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: [
        maintainers: ["vKxni"],
        licences: ["MIT"],
        links: %{
          GitHub: @github_url
        }
      ],
      source_url: @github_url,
      docs: [
        main: "readme",
        extras: [
          "README.md"
        ]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      # http reqs
      {:httpoison, "~> 1.8"},
      {:poison, "~> 5.0"},
      {:jason, "~> 1.3"},

      # .env
      {:dotenv_parser, "~> 2.0"}
    ]
  end
end
