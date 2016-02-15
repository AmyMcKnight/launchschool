puts "Need to calm down? Lets do a countdown! Please give me a number"

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done! Don't you feel better?"