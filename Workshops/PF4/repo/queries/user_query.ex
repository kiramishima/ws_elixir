defmodule HelloServerSupervisor.UserQueries do
  import Ecto.Query

  def sample_query do
    query =
      from w in User,
        select: w

    HelloServerSupervisor.Repo.all(query)
  end

  def sample_query2 do
    query =
      from u in "users",
      join: up in "users_profile", on: up.user_id == u.id,
        select: {u.id, u.email, up.name}

    HelloServerSupervisor.Repo.all(query)
  end

  def sample_insert do
    %User{}
    |> Ecto.Changeset.change(%{})
    |> HelloServerSupervisor.Repo.insert()
  end

  def sample_update do
    {:ok, user} = sample_insert()

    user
    |> Ecto.Changeset.change(%{city: "NYC"})
    |> HelloServerSupervisor.Repo.update()
  end
end
