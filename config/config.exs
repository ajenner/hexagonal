# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hexagonal,
  ecto_repos: [Hexagonal.Repo]

# Configures the endpoint
config :hexagonal, HexagonalWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2+mX6ppKY40bR4Xt7pe3gG4Fn25mu5BUCaaBI+QM9srB2yb0awFHZuO9ffDsjoul",
  render_errors: [view: HexagonalWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hexagonal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
