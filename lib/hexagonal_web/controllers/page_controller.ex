defmodule HexagonalWeb.PageController do
  use HexagonalWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
