defmodule HelloServerSupervisor.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    children = [
      # Starts a worker by calling: HelloServerSupervisor.Worker.start_link(arg)
      # {HelloServerSupervisor.Worker, arg}
      worker(Mongo, [[name: :mongo, url: "", pool_size: 2]])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: HelloServerSupervisor.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defimpl Poison.Encoder, for: BSON.ObjectId do
    def encode(id, options) do
      BSON.ObjectId.encode!(id) |> Poison.Encoder.encode(options)
    end
  end
end
