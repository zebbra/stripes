defmodule Stripes.MixProject do
  use Mix.Project

  @source_url "https://github.com/zebbra/stripes"
  @version "0.1.0"

  @description """
  A set of useful tools and libraries as well as a collection of Phoenix LiveView components.
  Easily installable via Igniter with automatic dependency management for the Phoenix ecosystem.
  """

  def project do
    [
      app: :stripes,
      version: @version,
      name: "Stripes",
      description: @description,
      elixir: "~> 1.18",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: docs(),
      aliases: aliases(),
      source_url: @source_url,
      dialyzer: [
        plt_add_apps: [:mix],
        ignore_warnings: ".dialyzer_ignore.exs"
      ]
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
      name: "stripes",
      maintainers: ["Hannes Wüthrich", "Claudio Siegenthaler"],
      licenses: ["MIT"],
      links: %{"GitHub" => @source_url, "Zebbra" => "https://zebbra.ch"},
      files: ~w(mix.exs lib README.md LICENSE.md CHANGELOG.md)
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

  defp aliases do
    [
      setup: ["deps.get"],
      install: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      # Runtime dependencies
      {:phoenix, "~> 1.7"},
      {:phoenix_html, "~> 4.0"},
      {:phoenix_live_view, "~> 1.0"},

      # Igniter for installation
      {:igniter, "~> 0.6", optional: true},

      # Development dependencies
      {:ex_check, "~> 0.16", only: [:dev, :test], runtime: false},
      {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:dialyxir, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:doctor, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: [:dev], runtime: false},
      {:gettext, ">= 0.0.0", only: [:dev], runtime: false},
      {:sobelow, ">= 0.0.0", only: [:dev], runtime: false},
      {:mix_audit, ">= 0.0.0", only: [:dev], runtime: false},
      {:tailwind_formatter, "~> 0.4", only: [:dev], runtime: false},
      {:styler, "~> 1.0", only: [:dev], runtime: false},
      {:tidewave, "~> 0.1", only: [:dev], runtime: false},
      {:live_debugger, "~> 0.3.0", only: [:dev], runtime: false},
      {:mix_test_watch, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end
end
