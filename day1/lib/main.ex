basements = File.read!("lib/input")
basements = String.replace(basements, "\n", "")
IO.puts "To what floor do the instructions take Santa?"
IO.puts "R: #{Santa.move(String.codepoints(basements),0)}"
