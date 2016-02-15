# say.rb

puts "hello"
puts "hi"
puts "how are you"
puts "I'm fine"

# say.rb refactored

def say(words)
  puts words
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

# say.rb refactored 2

def say(words)
  puts words + "."
end

say("hello")
say("hi")
say("how are you")
say("I'm fine")

#say.rb refactored again. . .

def say(words="Hello")
  puts words + "."
end

say()
say("hi")
say("how are you")
say("I'm fine")
