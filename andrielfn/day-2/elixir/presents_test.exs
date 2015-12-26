ExUnit.start

Code.require_file("presents.exs")

defmodule PresentsTest do
  use ExUnit.Case, async: true

  test "returns the required wrapping paper" do
    wrapping_paper = Presents.required_wrapping_paper("2x3x4\n1x1x10")

    assert wrapping_paper == 101
  end

  test "returns the required ribbon" do
    ribbon = Presents.required_ribbon("2x3x4\n1x1x10")

    assert ribbon == 48
  end
end
