defmodule Mix.Tasks.Stripes.Install do
  @shortdoc "Installs Stripes and its dependencies"

  @moduledoc """
  {@shortdoc}

  This task is used by igniter to install the Stripes package and configure
  all necessary dependencies in the target project.

  ## Usage

      mix igniter.install stripes

  This will:
  - Add stripes and its dependencies to mix.exs
  - Install Phoenix, Phoenix HTML, and Phoenix LiveView if not already present
  - Provide instructions for using Stripes components
  """

  use Igniter.Mix.Task

  @impl Igniter.Mix.Task
  def info(_argv, _composing_task) do
    %Igniter.Mix.Task.Info{
      group: :igniter,
      installs: [],
      positional: [],
      schema: [],
      example: "mix igniter.install stripes",
      composes: ["stripes.deps"]
    }
  end

  @impl Igniter.Mix.Task
  def igniter(igniter) do
    igniter
    |> Igniter.Scribe.start_document("Installation", @moduledoc, app_name: :stripes)
    |> add_usage_instructions()
    |> Igniter.compose_task("stripes.deps")
  end

  defp add_usage_instructions(igniter) do
    Igniter.add_notice(igniter, """
    Stripes has been installed successfully!

    To use Stripes components in your Phoenix application:

    1. In your web.ex file, add to your live_view function:

        def live_view do
          quote do
            use Phoenix.LiveView,
              layout: {MyAppWeb.Layouts, :app}

            use Stripes.Components

            unquote(html_helpers())
          end
        end

    2. Or import directly in individual LiveView modules:

        defmodule MyAppWeb.SomeLive do
          use Phoenix.LiveView
          use Stripes.Components

          # Your LiveView code here
        end

    For more information, see the documentation at https://hexdocs.pm/stripes
    """)
  end
end
