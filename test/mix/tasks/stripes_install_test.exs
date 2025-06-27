defmodule Mix.Tasks.Stripes.InstallTest do
  use ExUnit.Case, async: true

  # import Igniter.Test

  alias Mix.Tasks.Stripes.Install

  describe "info/2" do
    test "returns correct task info" do
      info = Install.info([], nil)

      assert info.group == :igniter
      assert info.example == "mix igniter.install stripes"
      assert info.positional == []
      assert info.schema == []

      # Check that it installs the required dependencies
      # assert {:styler, "~> 1.4"} in info.installs
      # assert {:phoenix_html, "~> 4.0"} in info.installs
      # assert {:phoenix_live_view, "~> 1.0"} in info.installs
    end
  end

  describe "installer?/0" do
    test "returns true indicating this is an installer task" do
      assert Install.installer?() == true
    end
  end

  describe "supports_umbrella?/0" do
    test "returns false for umbrella support" do
      assert Install.supports_umbrella?() == false
    end
  end

  # describe "igniter/1" do
  #   test "adds usage instructions notice" do
  #     igniter = %Igniter{notices: []}
  #     result = Install.igniter(igniter)

  #     assert length(result.notices) == 1
  #     notice = hd(result.notices)
  #     assert notice =~ "Stripes has been installed successfully!"
  #     assert notice =~ "use Stripes.Components"
  #   end
  # end

  # This does not work, yet:
  #
  # test "it does not blow up" do
  #   phx_test_project()
  #   |> Igniter.compose_task("stripes.install")
  #   |> apply_igniter!()
  # end
end
