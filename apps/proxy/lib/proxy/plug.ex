defmodule Proxy.Plug do
  def init(options) do
    options
  end

  def call(conn, _opts) do
    cond do
      false ->
        HelloWeb.Endpoint.call(conn, [])
      true ->
        HelloWeb.Endpoint.call(conn, [])
    end
  end
end
