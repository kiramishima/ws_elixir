use Mix.Config

config :sugar,
    router: HelloServerSupervisor.Router

config :sugar, HelloServerSupervisor.Router,
    https_only: false,
    http: [port: 4000],
    https: false

# config :simple, HelloServerSupervisor.Repo,
#    adapter: Mongo.Ecto,
#    mongo_url: ""
