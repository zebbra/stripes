defmodule StripesTest do
  use ExUnit.Case

  doctest Stripes

  test "module has documentation" do
    assert Stripes.__info__(:module) == Stripes
    {:docs_v1, _, _, _, module_doc, _, _} = Code.fetch_docs(Stripes)
    assert module_doc != :none
  end
end
