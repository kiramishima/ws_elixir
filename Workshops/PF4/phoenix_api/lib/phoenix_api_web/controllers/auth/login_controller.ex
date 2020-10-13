defmodule PhoenixApiWeb.Auth.LoginController do
  use PhoenixApiWeb, :controller
  alias PhoenixApiWeb.Auth.Auth

  def login(conn, %{"email" => email, "password" => password}) do
    try do
      user_count = Auth.check_if_user_exist(email, username)
      if user_count > 0 do
        {:ok, jwt, _full_claims} =
          Auth.Guardian.encode_and_sign(user, %{}, permissions: user.permissions)
        jwt = "token :D"
        conn |> put_status(401) |> json(%{:message => "Ya existe un usuario con el mismo email o username"})
      else
        {:ok, user} = Auth.create_user(%{"email" => email, "username" => username, "password" => password})
        json(conn, %{:user => user})
      end
    rescue
      Ecto.NoResultsError ->
        json(conn, %{:mail => email, :user => %{}})
    end
  end
end
