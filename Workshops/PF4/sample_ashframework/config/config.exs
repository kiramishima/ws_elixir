# General application configuration
use Mix.Config


config :app_connection, SampleAshframework.Repo,
  username: "postgres",
  password: "postgres",
  database: "helpdesk_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
