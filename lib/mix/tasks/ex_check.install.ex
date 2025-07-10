defmodule Mix.Tasks.ExCheck.Install do
  @shortdoc "A short description of your task"

  @moduledoc """
  #{@shortdoc}

  Longer explanation of your task

  ## Example

  ```sh
  mix styler.install
  ```
  """

  use Igniter.Mix.Task

  @deps [
    {:credo, ">= 0.0.0", only: [:dev], runtime: false},
    {:dialyxir, ">= 0.0.0", only: [:dev], runtime: false},
    {:doctor, ">= 0.0.0", only: [:dev], runtime: false},
    {:ex_doc, ">= 0.0.0", only: [:dev], runtime: false},
    {:gettext, ">= 0.0.0", only: [:dev], runtime: false},
    {:sobelow, ">= 0.0.0", only: [:dev], runtime: false},
    {:mix_audit, ">= 0.0.0", only: [:dev], runtime: false}
  ]

  @impl Igniter.Mix.Task
  def info(_argv, _composing_task) do
    %Igniter.Mix.Task.Info{
      group: :ex_check,
      only: [:dev, :test],
      adds_deps: @deps,
      dep_opts: [runtime: false],
      example: "mix ex_check.install"
    }
  end

  @impl Igniter.Mix.Task
  def igniter(igniter) do
    Enum.reduce(@deps, igniter, &Igniter.Project.Deps.add_dep(&2, &1))
  end
end
