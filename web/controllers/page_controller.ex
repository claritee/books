defmodule Books.PageController do
  use Books.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
