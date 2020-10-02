defmodule HelloServerSupervisor.Controllers.Jsonpages do
  use Sugar.Controller

  def index(conn, []) do

    headers = [
      {"content-type", "application/json"}
    ]

    conn
    |> status(201)
    |> headers(headers)
    |> json(%{:msg => "Je suis un JSON"})
  end

  def me(conn, []) do
    headers = [
      {"content-type", "application/json"}
    ]

    conn
    |> status(201)
    |> headers(headers)
    |> json(%{:name => "Kira Mishima", :langs => ["PHP", "C#", "Golang", "Python", "F#"]})
  end
end
