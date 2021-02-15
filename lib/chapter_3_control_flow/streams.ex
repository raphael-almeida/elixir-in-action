defmodule Streams do
  def enumerate_with_index(list) do
    list
    |> Stream.with_index(1)
    |> Enum.each(fn {element, index} ->
      IO.puts("#{index}. #{element}")
    end)
  end

  def sqrt(numbers) do
    numbers
    |> Stream.filter(&(is_number(&1) and &1 > 0))
    |> Stream.map(&{&1, :math.sqrt(&1)})
    |> Stream.with_index(1)
    |> Enum.each(fn {{input, result}, index} ->
      IO.puts("#{index}. sqrt(#{input}) = #{result}")
    end)
  end
end
