defmodule Mix.Tasks.Styler.InstallTest do
  use ExUnit.Case, async: true

  import Igniter.Test

  test "it warns when run" do
    # generate a test project
    test_project()
    # run our task
    |> Igniter.compose_task("styler.install", [])
    # see tools in `Igniter.Test` for available assertions & helpers
    |> assert_has_warning("mix styler.install is not yet implemented")
  end
end
