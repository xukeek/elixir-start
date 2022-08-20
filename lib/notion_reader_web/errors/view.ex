defmodule NotionReaderWeb.Errors.View do
  use Phoenix.View, root: "lib/notion_reader_web", path: "errors/templates", namespace: NotionReaderWeb

  def template_not_found(template, _assigns) do
    Phoenix.Controller.status_message_from_template(template)
  end
end
