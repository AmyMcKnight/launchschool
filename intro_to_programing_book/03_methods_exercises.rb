# exersise 1

def greeting(name)
  puts "Hello " + name + ". How are you?"
end

greeting("Amy")

# exersise 2

1. x = 2 # => 2
2. puts x = 2 # nil because puts always returns nil
3. p name = "Joe" # => "Joe" 
4. four = "four" # "four"
5. print something = "nothing" # nothing => nil 

# exercise 3

def multiply_these(a, b)
  a * b
end

puts multiply_these(8, 5)

# exercise 4

Yippeee!!!! # My first thought was "The last line is not going to run because it comes after the return. if the return was removed it would put the word without exclamation points."

# but I was wrong. It actually returned nil. Will watch the video and see why.
# is nil considered nothing? because when I ran it in irb I got nil not a prompt. 

# exercise 5

# part 1

def scream(words)
  words = words + "!!!!"
end

scream("Yippeee")

# part 2

"Yippeee"

# after looking at the solution it seem that I may have edited too much. 

# exercise 6

# the wrong number of arguments were given. It was expecting 2 and 3 were given.
# the method in question was the calculate_product method




