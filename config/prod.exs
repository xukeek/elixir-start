import Config

config :notion_reader, NotionReaderWeb.Endpoint,
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  level: :info,
  metadata: ~w(request_id)a
