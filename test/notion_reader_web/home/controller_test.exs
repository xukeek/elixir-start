defmodule NotionReaderWeb.Home.ControllerTest do
  use NotionReaderWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Hello, world!"
  end
end
