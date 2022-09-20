defmodule CustomerRegistrationWeb.PageController do
  use CustomerRegistrationWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
