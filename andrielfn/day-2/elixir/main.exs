Code.require_file("presents.exs")

IO.puts "How many total square feet of wrapping paper should they order?"
IO.puts "R: #{File.read!("./input") |> Presents.required_wrapping_paper}"

IO.puts "How many total feet of ribbon should they order?"
IO.puts "R: #{File.read!("./input") |> Presents.required_ribbon}"
