a = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{a}"
mutate(a)
p "After mutate method: #{a}"

puts "For curriosity to see what puts does"

puts "Before mutate method: #{a}"
mutate(a)
puts "After mutate method: #{a}"

puts "for curriosity to see what print does"

print "Before mutate method: #{a}"
mutate(a)
print "After mutate method: #{a}"


puts

# Example of a method that does not mutate the caller
puts

b = [1, 2, 3]

def no_mutate(array)
  array.last
end

p "Before no_mutate method: #{b}"
no_mutate(b)
p "After no_mutate method: #{b}"

# puts vs return: The Sequel

c = [1, 2, 3]

def mutate(array)
  array.pop
end

p "Before mutate method: #{c}"
p mutate(c)
p "After mutate method: #{c}"