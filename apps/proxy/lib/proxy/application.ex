defmodule Proxy.Application do
  @moduledoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    port = (System.get_env("PORT") || "8080") |> String.to_integer
    cowboy = Plug.Adapters.Cowboy.child_spec(:http, Proxy.Plug, [], [port: port])

    children = [
      cowboy
    ]

    opts = [strategy: :one_for_one, name: Proxy.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
