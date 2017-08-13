# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hola,
  namespace: Hola,
  ecto_repos: [Hola.Repo]

# Configures the endpoint
config :hola, HolaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "9xDEmU0hAJ+WdMyoJU5hGFNZ65lBaUgTgYIlpsGEvuvRRyliOcOfi8GrWhjBYL6o",
  render_errors: [view: HolaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hola.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
