defmodule WallabyExampleWeb.PageController do
  use WallabyExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
