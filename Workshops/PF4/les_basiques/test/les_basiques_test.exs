defmodule LesBasiquesTest do
  use ExUnit.Case
  doctest LesBasiques

  test "greets the world" do
    assert LesBasiques.hello() == :world
  end
end
