#1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word. - "laboratory" - "experiment" - "Pans Labyrinth" - "elaborate" - "polar bear"

strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

strings.each do |string|
  if /lab/i =~ string
    puts string
  else
    puts "That word isn't in it"
  end
end

# above edited after viewing the soluiton and watching the video.

def check_string(word)
  if /lab/i =~ word
    puts word
  else
    puts "That word isn't in it"
  end
end

check_string("laboratory")
check_string("experiment")
check_string("Pans Labyrinth")
check_string("elaborate")
check_string("polar bear")

# What will the following program print to the screen? What will it return?

# #<Proc:0x007fef7289a3f0@(irb):59> nothing is printed to the screen. The second block of code needs to be called for it to run.

#3. What is exception handling and what problem does it solve?
# it is a way to write code so that if an error occurs the program can keep going and not quit all to gether.

#4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

#5. Why does the code give us an error message?

# Because the & sign is missing from infront of the word "block"