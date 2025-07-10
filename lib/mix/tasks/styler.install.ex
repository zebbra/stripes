defmodule Mix.Tasks.Styler.Install do
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

  @impl Igniter.Mix.Task
  def info(_argv, _composing_task) do
    %Igniter.Mix.Task.Info{
      group: :styler,
      only: [:dev, :test],
      example: "mix styler.install"
    }
  end

  @impl Igniter.Mix.Task
  def igniter(igniter) do
    igniter
    |> Igniter.Project.Formatter.add_formatter_plugin(Styler)
    |> Igniter.add_notice("Installed and configured styler")
  end
end
