defmodule Santa do
  def move(_, floor \\ 0)

  def move("", floor), do: floor

  def move("(" <> moves, floor) do
    move(moves, floor + 1)
  end

  def move(")" <> moves, floor) do
    move(moves, floor - 1)
  end

  def basement(_, floor \\ 0, count \\ 0)

  def basement(_, -1, count), do: count

  def basement("(" <> moves, floor, count) do
    basement(moves, floor + 1, count + 1)
  end

  def basement(")" <> moves, floor, count) do
    basement(moves, floor - 1, count + 1)
  end
end
