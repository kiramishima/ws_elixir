defmodule SampleAshframework.Repo do
  use Ecto.Repo,
    otp_app: :app_connection,
    adapter: Ecto.Adapters.MyXQL
end
