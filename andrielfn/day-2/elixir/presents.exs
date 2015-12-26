defmodule Presents do
  def required_wrapping_paper(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&parse_dimensions/1)
    |> Enum.map(&calc_area/1)
    |> Enum.reduce(0, &(&1 + &2))
  end

  def required_ribbon(input) do
    input
    |> String.split("\n", trim: true)
    |> Enum.map(&parse_dimensions/1)
    |> Enum.map(&calc_ribbon/1)
    |> Enum.reduce(0, &(&1 + &2))
  end

  defp calc_area([l, w, h]) do
    (2*l*w + 2*l*h + 2*w*h) + Enum.min([l*w, l*h, w*h])
  end

  defp calc_ribbon([l, w, h]) do
    Enum.min([2*(l+w), 2*(l+h), 2*(w+h)]) + l*w*h
  end

  defp parse_dimensions(dimensions) do
    dimensions |> String.split("x") |> Enum.map(&String.to_integer/1)
  end
end
