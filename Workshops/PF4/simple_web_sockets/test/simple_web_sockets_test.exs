defmodule SimpleWebSocketsTest do
  use ExUnit.Case
  doctest SimpleWebSockets

  test "greets the world" do
    assert SimpleWebSockets.hello() == :world
  end
end
