defmodule Prueba.Endpoint do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    conn
    |> put_resp_header("Content-Type", "text/html")
    |> send_resp(200, "<h1>Hola elixir</h1>")
  end
end
