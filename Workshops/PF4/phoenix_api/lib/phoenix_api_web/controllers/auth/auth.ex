defmodule PhoenixApiWeb.Auth.Auth do
  import Ecto.Query, warn: false
  alias PhoenixApi.Repo
  alias PhoenixApiWeb.Schemas.User

  def check_if_user_exist(email, username) do
    u = Repo.one(from d in "user",
    select: count(d.id),
    where: d.email == ^email or d.username == ^username)

    # IO.inspect(u)
    u
  end

  def check_if_email_exist(email) do
    u = Repo.one(from d in "user",
    select: count(d.id),
    where: d.email == ^email)

    # IO.inspect(u)
    u
  end

  def check_if_user_exist(username) do
    u = Repo.one(from d in "user",
    select: count(d.id),
    where: d.username == ^username)

    # IO.inspect(u)
    u
  end

  def getAuthUser() do
    u = Repo.one(from d in "user",
    select: d.*,
    where: d.username == ^username)
    u
  end

  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end
end
