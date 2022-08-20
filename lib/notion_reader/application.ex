defmodule NotionReader.Application do
  @moduledoc """
  Main entry point of the app
  """

  use Application

  def start(_type, _args) do
    children = [
      NotionReader.Repo,
      {Phoenix.PubSub, [name: NotionReader.PubSub, adapter: Phoenix.PubSub.PG2]},
      NotionReaderWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: NotionReader.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    NotionReaderWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
