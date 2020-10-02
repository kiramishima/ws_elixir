defmodule HelloServerSupervisorTest do
  use ExUnit.Case
  doctest HelloServerSupervisor

  test "greets the world" do
    assert HelloServerSupervisor.hello() == :world
  end
end
