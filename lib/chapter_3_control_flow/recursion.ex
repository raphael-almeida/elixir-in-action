defmodule Recursion do
  def print(1), do: IO.puts(1)

  def print(n) do
    print(n - 1)
    IO.puts(n)
  end

  def sum([]), do: 0

  def sum([head | tail]) do
    head + sum(tail)
  end

  def list_len([]), do: 0

  def list_len([_head | tail]) do
    list_len(tail) + 1
  end

  def range(from, to) when is_number(from) and is_number(to) and from == to do
    0
  end

  def range(from, to) when is_number(from) and is_number(to) and from > to do
    0
  end

  def range(from, to) do
    range(from + 1, to) + 1
  end

  def positive([]), do: []

  def positive([head | tail]) do
    case head > 0 do
      true -> [head | positive(tail)]
      false -> positive(tail)
    end
  end
end
