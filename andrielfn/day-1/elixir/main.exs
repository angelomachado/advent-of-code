Code.require_file("santa.ex")

{:ok, input} = File.read("./input")

input = String.replace(input, "\n", "")

floor = Santa.move(input, 0)
basement = Santa.basement(input, 0, 0)

IO.puts "To what floor do the instructions take Santa?"
IO.puts "R: #{floor}"

IO.puts "What is the position of the character that causes Santa to first enter the basement?"
IO.puts "R: #{basement}"
