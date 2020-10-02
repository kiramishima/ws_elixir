defmodule SimpleServer do
  use Ace.HTTP.Service, cleartext: true
  use Raxx.SimpleServer
  @moduledoc """
  Documentation for `SimpleServer`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> SimpleServer.hello()
      :world

  """
  # @impl Raxx.SimpleServer

  @impl Raxx.SimpleServer
  def handle_request(
    %{method: :GET, path: ["name", name]})
  do
    response(:ok)
    |> set_header("content-type", "text/plain")
    |> set_body("Hello, #{name}!")
  end

end
