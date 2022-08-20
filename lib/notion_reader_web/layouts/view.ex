defmodule NotionReaderWeb.Layouts.View do
  use Phoenix.View, root: "lib/notion_reader_web", path: "layouts/templates", namespace: NotionReaderWeb
  use Phoenix.HTML

  import Phoenix.Controller, only: [get_flash: 2]

  alias NotionReaderWeb.Router.Helpers, as: Routes
end
