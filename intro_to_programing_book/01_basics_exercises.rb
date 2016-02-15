# Ex. 1: with double quotes
"The man said, 'Hi there! '"

# Ex 2: with single quotes and escaping
'The man said, \'Hi there !\''

# example of symbols
:name
:a_symbol
:"surprisingly, this is also a symbol"

# Example of integers
puts 1, 2, 3, 50, 10, 4345098098

# Example of floats
puts 1.2345, 2345.4267, 98.2234

# Exercises
puts
puts "Exercise 1"
# Add two strings together that, when concatenated, return your first and last name as your full name in one string.

puts "Amy " + "McKnight"

puts
puts "Exercise 2"
# Use the modulo operator, division, or a combination of both to take a 4 digit number and find 1) the thousands number 2) the hundreds 3) the tens and 4) and the ones.

 puts 6789

thousands =  6798 / 1000
hundreds = 6789 % 1000 / 100
tens = 6789 % 1000 % 100 /10
ones = 6789 % 1000 % 100 % 10

puts "there are #{thousands} in 6789" 
puts "there are #{hundreds} in 6789"
puts "there are #{tens} in 6789"
puts "there are #{ones} in 6789"

puts
puts "Exercise 3"
#Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen. The output for your program should look something like this.

movies = { its_a_wonderful_life: 1946,
          joy: 2015,
          happy: 2011,
          as_good_as_it_gets: 2001,
          }

puts movies [:its_a_wonderful_life]
puts movies [:joy]
puts movies [:happy]
puts movies [:as_good_as_it_gets]

puts
puts "Exercise 4"
#Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.

movie_dates = [1946, 2015, 2011, 2001]

puts movie_dates [0]
puts movie_dates [1]
puts movie_dates [2]
puts movie_dates [3]

puts
puts "Exercise 5"
#Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
factorial_five = 5 * 4 * 3 * 2 * 1
factorial_six = 6 * 5 * 4 * 3 * 2 * 1
factorial_seven = 7 * 6 * 5 * 4 * 3 * 2 * 1
factorial_eight = 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

puts "5! = #{factorial_five}"
puts "6! = #{factorial_six}"
puts "7! = #{factorial_seven}"
puts "8! = #{factorial_eight}"

puts
puts "Exercise 6"
#Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
puts 9.8**2
puts 98.3**2
puts 4.1**2

puts
puts "Exercise 7"
#What does the following error message tell you?


puts "that SyntaxError tells me that on line 2 there was a typo there should have been a } instead of a ). There was also another problem on line 16"