# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_base,
  namespace: PhxBase,
  ecto_repos: [PhxBase.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :phx_base, PhxBaseWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JZyk3KPexxT2W4T69vE2XEMIKL7eQIFSQ/zPejUDtbTS9q+aoWnc10QVfoBZk3Vh",
  render_errors: [view: PhxBaseWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxBase.PubSub,
  live_view: [signing_salt: "G+p6zfa3"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
