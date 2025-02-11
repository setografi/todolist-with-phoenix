defmodule PhoenixApp.TodosFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixApp.Todos` context.
  """

  @doc """
  Generate a todo.
  """
  def todo_fixture(attrs \\ %{}) do
    {:ok, todo} =
      attrs
      |> Enum.into(%{
        completed: true,
        title: "some title"
      })
      |> PhoenixApp.Todos.create_todo()

    todo
  end
end
