defmodule PhoenixApiWeb.Auth.LoginController do
  use PhoenixApiWeb, :controller
  alias PhoenixApiWeb.Auth.Auth

  def login(conn, %{"email" => email, "password" => password}) do
    try do
      email_count = Auth.check_if_email_exist(email)
      if email_count > 0 do
        jwt = "token :D"
        conn |> put_status(401) |> json(%{:message => "Ya existe un usuario con el mismo email o username"})
      else
        raise "El email no existe"
      end
    rescue
      Ecto.NoResultsError ->
        json(conn, %{:mail => email, :user => %{}})
    end
  end

  def login(conn, %{"username" => username, "password" => password}) do
    try do
      user_count = Auth.check_if_user_exist(username)
      if user_count > 0 do

        jwt = "token :D"
        conn |> json(%{:message => ""})
      else
        raise "El usuario no existe"
      end
    rescue
      Ecto.NoResultsError ->
        json(conn, %{:mail => email, :user => %{}})
    end
  end
end
