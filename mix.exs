defmodule Stripes.MixProject do
  use Mix.Project

  @source_url "https://github.com/zebbra/stripes"
  @version "0.0.1"

  @description """
  A collection of Phoenix LiveView components using
  """

  def project do
    [
      app: :stripes,
      version: @version,
      name: "Stripes",
      description: @description,
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      maintainers: ["Hannes Wüthrich"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url},
      files: ~w(mix.exs priv lib assets README.md LICENSE.md CHANGELOG.md)
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md"],
      logo: "logo.svg",
      source_ref: @version,
      source_url: @source_url
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Runtime dependencies
      {:phoenix, "~> 1.7"},
      {:phoenix_live_view, "~> 0.20"},
      {:phoenix_html, "~> 4.0"},

      # Development dependencies
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false},
      {:tailwind_formatter, "~> 0.4", only: [:dev, :test], runtime: false},
      {:styler, "~> 1.0", only: [:dev, :test], runtime: false},
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false},
      {:mix_audit, "~> 2.1", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34.2", only: [:dev], runtime: false}
    ]
  end
end
