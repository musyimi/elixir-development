defmodule ElixirDevelopmentWeb.PageController do
  use ElixirDevelopmentWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
