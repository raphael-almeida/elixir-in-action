defmodule MapSetEx do
  def instance_and_modify() do
    MapSet.new()
    |> MapSet.put(:monday)
    |> MapSet.put(:tuesday)
  end

  def query(days, day) do
    MapSet.member?(days, day)
  end
end
