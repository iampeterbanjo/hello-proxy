defmodule Proxy.Plug do
  def init(options) do
    options
  end

  def call(conn, _opts) do
    cond do
      conn.host =~ ~r{hola.} ->
        HolaWeb.Endpoint.call(conn, [])
      true ->
        HelloWeb.Endpoint.call(conn, [])
    end
  end
end
