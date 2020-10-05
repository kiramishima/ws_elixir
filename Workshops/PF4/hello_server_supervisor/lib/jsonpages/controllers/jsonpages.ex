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




  def me2(conn, []) do
    headers = [
      {"content-type", "application/json"}
    ]
    IO.puts "ID is #{inspect headers}\n"
    # result = HelloServerSupervisor.UserQueries.sample_query2()
    v = BSON.ObjectId.decode!("5f78d94b8d4b52be05feea7e")
    IO.puts "ID is #{inspect v}\n"
    # Logger.debug("BSON", v )
    pipeline = [
      %{
        "$match" => %{
          "_id" => v
        }
      },
      %{
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
          "_id" => "1",
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

    IO.puts "Result is #{inspect result}\n"
    Logger.debug("result", result )
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
