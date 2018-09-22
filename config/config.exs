# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :url_shortener,
  ecto_repos: [UrlShortener.Repo]

# Configures the endpoint
config :url_shortener, UrlShortenerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gzXjZe8sw6RO22UHScNNrUSzLSuOKYrsFqdVLgiyA27vmtJNkKFFknVjkU7vQlRk",
  render_errors: [view: UrlShortenerWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: UrlShortener.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

  # DB confs
config :url_shortener, UrlShortener.Repo,
  adapter: EctoMnesia.Adapter

config :ecto_mnesia,
  host: {:system, :atom, "MNESIA_HOST", Kernel.node()},
  storage_type: {:system, :atom, "MNESIA_STORAGE_TYPE", :disc_copies}

config :mnesia,
  dir: 'priv/data/mnesia'
# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
