defmodule HolaWeb.PageController do
  use HolaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
