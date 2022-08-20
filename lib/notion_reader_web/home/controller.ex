defmodule NotionReaderWeb.Home.Controller do
  use Phoenix.Controller

  plug(:put_view, NotionReaderWeb.Home.View)

  @spec index(Plug.Conn.t(), map) :: Plug.Conn.t()
  def index(conn, _) do
    render(conn, "index.html", message: "Hello, world!")
  end
end
