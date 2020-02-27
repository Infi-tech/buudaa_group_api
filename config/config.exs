# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :buudaa_api,
  ecto_repos: [BuudaaApi.Repo]

# Configures the endpoint
config :buudaa_api, BuudaaApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qG2qf6PEGA4w5a0hKNzJteK8MPBK4qefyUMrrHkZw7RPbuWe46UUqvqIjiWKQp3o",
  render_errors: [view: BuudaaApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BuudaaApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
