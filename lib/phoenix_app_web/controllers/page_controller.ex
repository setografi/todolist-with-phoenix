defmodule PhoenixAppWeb.PageController do
  use PhoenixAppWeb, :controller

  def index(conn, _params) do
    # Ambil daftar todos dari database
    todos = PhoenixApp.Todos.list_todos()

    # Kembalikan daftar todos ke dalam tampilan
    render(conn, "index.html", todos: todos)
  end
end
