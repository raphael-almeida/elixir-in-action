defmodule Geometry do
  def area({:rectangle, a, b}) do
    a * b
  end

  def area({:square, a}) do
    a * a
  end

  def area({:circle, r}) do
    r * r * 3.14
  end

  def area(shape_not_known) do
    {:error, {:unknown_shape, shape_not_known}}
  end

  def area() do
    {:error, :shape_not_provided}
  end
end
