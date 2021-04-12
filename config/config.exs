import Config

config :speedrun_blogengine,
  ecto_repos: [SpeedrunBlogengine.Repo]

config :speedrun_blogengine_web,
  ecto_repos: [SpeedrunBlogengine.Repo],
  generators: [context_app: :speedrun_blogengine]

config :speedrun_blogengine_web, SpeedrunBlogengineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bQT10/CdTUpdK/vxHy2XzHauPtDLpdUNVktYqTPoE6jl6hxT/gKLaizKUo/tKrWs",
  render_errors: [view: SpeedrunBlogengineWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: SpeedrunBlogengine.PubSub,
  live_view: [signing_salt: "GYmd38aP"]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
