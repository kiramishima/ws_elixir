defmodule HelloServerSupervisor.Router do
  use Sugar.Router
  plug Sugar.Plugs.HotCodeReload

  if Sugar.Config.get(:sugar, :show_debugger, false) do
    use Plug.Debugger, otp_app: :hello_server_supervisor
  end

  plug Plug.Static, at: "/static", from: :hello_server_supervisor

  # Uncomment the following line for session store
  # plug Plug.Session, store: :ets, key: "sid", secure: true, table: :session

  # Define your routes here
  get "/", HelloServerSupervisor.Controllers.Main, :index
  get "/index2", HelloServerSupervisor.Controllers.Jsonpages, :index
  get "/me", HelloServerSupervisor.Controllers.Jsonpages, :me
  get "/me2", HelloServerSupervisor.Controllers.Jsonpages, :me2
end
