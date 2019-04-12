# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :libra,
  ecto_repos: [Libra.Repo]

# Configures the endpoint
config :libra, LibraWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zf63Sju7eobJ2KS5gk4HrGY1fJ1g0ZNUuw/t6X5FX76DpDCNk3WLZ2Qlymqlct9r",
  render_errors: [view: LibraWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Libra.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
