# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :wallaby_example,
  ecto_repos: [WallabyExample.Repo]

# Configures the endpoint
config :wallaby_example, WallabyExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "K58HOt4uk9j/JdJCB8zAjNLEyxyXlxZNc2xGHyhsLZO2HzwbzfJujZIg0xQx0M6a",
  render_errors: [view: WallabyExampleWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WallabyExample.PubSub,
  live_view: [signing_salt: "X3HlL/cc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configure your database
config :wallaby_example, WallabyExample.Repo,
  username: "admin",
  password: "admin",
  database: "wallaby_example_#{Mix.env()}",
  hostname: "postgres",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
