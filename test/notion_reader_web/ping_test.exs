defmodule NotionReaderWeb.PingTest do
  use NotionReaderWeb.ConnCase

  test "GET /ping", %{conn: conn} do
    conn = get(conn, "/ping")

    assert response(conn, 200)
  end
end
