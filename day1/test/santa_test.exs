defmodule SantaTest do
  use ExUnit.Case
  doctest Santa

  test "Santa starts on the ground floor" do
    assert Santa.move([],0) == 0
  end

  test "Santa goes up one floor" do
    assert Santa.move(["("],0) == 1
  end

  test "Santa goes down one floor" do
    assert Santa.move([")"],0) == -1
  end

end
