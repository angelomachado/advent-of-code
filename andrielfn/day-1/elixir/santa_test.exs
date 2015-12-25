ExUnit.start

Code.require_file("santa.ex")

defmodule SantaTest do
  use ExUnit.Case, async: true

  test "goes up when receive a '('" do
    floor = Santa.move("(")

    assert floor == 1
  end

  test "goes down when receive a ')'" do
    floor = Santa.move(")")

    assert floor == -1
  end

  test "returns the floor when there is no more moves" do
    floor = Santa.move("", 123)

    assert floor == 123
  end

  test "returns the position of the basement" do
    basement = Santa.basement(")")

    assert basement == 1

    basement = Santa.basement("())")

    assert basement == 3
  end
end
