defmodule SampleAshframeworkTest do
  use ExUnit.Case
  doctest SampleAshframework

  test "greets the world" do
    assert SampleAshframework.hello() == :world
  end
end
