defmodule Cond do
  def max(a, b) do
    cond do
      a > b -> a
      true -> b
    end
  end
end
