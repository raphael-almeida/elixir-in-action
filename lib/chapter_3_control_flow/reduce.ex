defmodule Reduce do
  def reduce_by_type() do
    Enum.reduce(
      [1, "not a number", 2, :x, 3],
      0,
      fn
        element, sum when is_number(element) ->
          sum + element

        _, sum ->
          sum
      end
    )
  end
end
