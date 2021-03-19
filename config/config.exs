# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :xoxo,
  ecto_repos: [Xoxo.Repo]

# Configures the endpoint
config :xoxo, XoxoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1bEaE3DOsYj8cqelqfonCBO1JF9eXpw3pxzjTyAv+/RBomzepiJSGPab19yGRRsa",
  render_errors: [view: XoxoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Xoxo.PubSub,
  live_view: [signing_salt: "H67skcbZ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
