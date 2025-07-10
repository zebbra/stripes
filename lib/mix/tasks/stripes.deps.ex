defmodule Mix.Tasks.Stripes.Deps do
  @shortdoc "Installs an opinionated set of dependencies"

  @moduledoc """
  #{@shortdoc}

  Longer explanation of your task

  ## Example

  ```sh
  mix stripes.deps
  ```
  """

  use Igniter.Mix.Task

  @deps [
    styler: [
      version: "~> 1.4",
      desc: "An opinionated formatter",
      url: "https://github.com/adobe/elixir-styler",
      opts: [
        only: [:dev, :test]
      ]
    ],
    ex_check: [
      version: "~> 0.16",
      only: [:dev, :test],
      desc: "An opinionated checker",
      url: "https://github.com/karolsluszniak/ex_check",
      opts: [
        only: [:dev, :test],
        runtime: false
      ]
    ]
  ]

  @impl Igniter.Mix.Task
  def info(_argv, _composing_task) do
    %Igniter.Mix.Task.Info{
      group: :stripes,
      example: "mix stripes.deps"
    }
  end

  @impl Igniter.Mix.Task
  def igniter(igniter) do
    Igniter.Scribe.section(igniter, "Dependencies", nil, fn igniter ->
      Enum.reduce(@deps, igniter, &add_dep(&2, &1))
    end)
  end

  def add_dep(igniter, {name, opts}) do
    Igniter.Scribe.section(igniter, "`#{name}`", opts[:desc], fn igniter ->
      Igniter.Scribe.patch(igniter, fn igniter ->
        igniter
        |> Igniter.Project.Deps.add_dep({name, opts[:version], opts[:opts]})
        |> Igniter.compose_task("#{name}.install")
      end)
    end)
  end
end
