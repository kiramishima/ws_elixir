defmodule HelloServerSupervisor.Controllers.Jsonpages do
  use Sugar.Controller

  require Logger

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


  defimpl Poison.Encoder, for: BSON.ObjectId do
    def encode(id, options) do
      BSON.ObjectId.encode!(id)
      |> Poison.Encoder.encode(options)
    end
  end

  def me2(conn, []) do
    headers = [
      {"content-type", "application/json"}
    ]

    # result = HelloServerSupervisor.UserQueries.sample_query2()
    pipeline = [
      %{
        "$match" => %{
          "_id" => BSON.ObjectId.decode!("5f78d94b8d4b52be05feea7e")
        }
      }, %{
        "$lookup"=> %{
          "from" => "users_profile",
          "localField" => "_id",
          "foreignField" => "user_id",
          "as" => "profile"
        }
      }, %{
        "$unwind" => %{
          "path" =>"$profile",
          "preserveNullAndEmptyArrays" => false
        }
      }, %{
        "$project" => %{
          "user_id" => "$_id",
          "profile_id" => "$profile._id",
          "email" => "$email",
          "name" => "$profile.name",
          "first_lastname" => "$profile.first_lastname",
          "second_lastname" => "$profile.second_lastname",
          "phone" => "$profile.phone",
          "birthday" => "$profile.birthday"
        }
      }
    ]
    result = Mongo.aggregate(:mongo, "users", pipeline)
    data = Poison.encode!(%{
      "status" => 200,
      "data" => result
    })
    Logger.debug("sample", data )
    # result
    # IO.puts(result)
    conn
    |> status(200)
    |> headers(headers)
    |> json(data)
  end


end
