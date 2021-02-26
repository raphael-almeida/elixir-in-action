defmodule TodoList do
  @moduledoc """
  The to-do list will support the following features:
  - Creating a new data abstraction
  - Adding new entries
  - Querying the abstraction
  """

  def new(), do: %{}

  def add_entry(todo_list, entry) do
    MultiDict.add(todo_list, entry.date, entry)
  end

  def entries(todo_list, date) do
    MultiDict.get(todo_list, date)
  end
end
