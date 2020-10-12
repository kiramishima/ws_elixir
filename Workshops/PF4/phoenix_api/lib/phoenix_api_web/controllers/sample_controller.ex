defmodule PhoenixApiWeb.SampleController do
  use PhoenixApiWeb, :controller

  def show(conn, _params) do
    response = %{:name => "Kira Mishima", :langs => ["PHP", "C#", "Golang", "Python", "F#"], :dsl => System.get_env("DSL", "mongo@localhost:2703")}
    json(conn, response)
  end
end
