#scope.rb

a = 5 

3.times do |n|
  a = 3
end

puts a 

# example 2
a = 5
b = 1 # added this so that the code would stop giving errors

3.times do |n|
  a = 3
  b = 5
end

puts a
puts b

# example 3

a = 5

def some_method
  a = 3
end

puts a

# example 4
arr = [1, 2, 3]

for i in arr do
  a = 5
end

puts a