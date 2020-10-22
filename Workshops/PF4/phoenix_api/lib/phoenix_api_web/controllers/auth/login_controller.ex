defmodule PhoenixApiWeb.Auth.LoginController do
  use PhoenixApiWeb, :controller
  alias PhoenixApiWeb.Auth.Auth

  def login(conn, %{"email" => email, "password" => password}) do
    try do
      email_count = Auth.check_if_email_exist(email)
      user_count = Auth.check_if_user_exist(email, username)
      if user_count > 0 do
        {:ok, jwt, _full_claims} = Auth.Guardian.encode_and_sign(user, %{}, permissions: user.permissions)
        conn |> json(%{:jwt => jwt})
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
