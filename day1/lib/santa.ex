defmodule Santa do
  defp next_floor(")"), do: -1
  defp next_floor("("), do: 1

  def move([head|tail], floor) do
    move(tail, next_floor(head) + floor)
  end

  def move([], floor), do: floor
end
