
#1. Write down whether the following expressions 
#return true or false. Then type the expressions 
#into irb to see the results.  

#1. (32 * 4) >= 129 # false
#2. false != !true # false
#3. true == 4 # false
#4. false == (847 == '874') # true
#5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

#Write a method that takes a string as argument. The method should return the 
#all-caps version of the string, only if the string is longer than 10 characters. 
#Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few 
#methods that would be helpful. Check the Ruby Docs!)

puts "What would you like to shout"
shout = gets.chomp

if shout.length > 10
  puts shout.upcase
else
  puts shout
end

#------ above was wrong fixed below

def shout2(string)
  if string.length > 10
  puts string.upcase
  else
  puts string
  end
end

puts shout2("Amy McKnight")
puts shout2("Mya McDay")  

#3.Write a program that takes a number from the user between 0 and 100 and reports 
#back whether the number is between 0 and 50, 51 and 100, or above 100.

puts "Please give me a number:"
number = gets.chomp.to_i

if number < 0
  puts "Please do not enter negative numbers!"
elsif number <= 50
  puts "The number " + number.to_s + " is between 0 and 50"
elsif number <= 100
  puts "The number " + number.to_s + " is between 51 and 100"
else 
  puts "The number " + number.to_s + " is more than 100"
end

#4. What will each block of code below print to the screen? Write your 
# answer on a piece of paper or in a text editor and then run each block of code to see 
#if you were correct.

#1. 
'4' == 4 ? puts("TRUE") : puts("FALSE")  # puts("false")

#2. 
x = 2
  if ((x * 3) / 2) == (4 + 4 - x - 3) 
    puts "Did you get it right?" # <---- That will be written to the screen
  else
    puts "Did you?" 
end

#3. 
   y = 9
   x = 10
   if (x + 1) <= (y)
     puts "Alright."
   elsif (x + 1) >= (y)
     puts "Alright now!" #<----  this line
   elsif (y + 1) == x
     puts "ALRIGHT NOW!" # <------ this evaluates true. But I'm guessing that because the first one was true, noting after it will run.
   else
     puts "Alrighty!"
   end

#5. Rewrite your program from exercise 3 using a case statement. Wrap each statement in 
#a method and make sure they both still work.

#this was my fisrt attempt before watching the video.

def number_eval1(number)
  if number < 0
    puts "Please do not enter negative numbers!"
  elsif number <= 50
    puts "The number " + number.to_s + " is between 0 and 50"
  elsif number <= 100
    puts "The number " + number.to_s + " is between 51 and 100"
  else 
    puts "The number " + number.to_s + " is more than 100"
  end
end

case number
when number < 0
  puts "Please don't enter negative numbesr! Thanks :-)"
when number <= 50
  puts "The number " + number.to_s + " is between 0 and 50"
when number <= 100
  puts "The number " + number.to_s + " is between 51 and 100"
else 
  puts "The number " + number.to_s + " is more than 100"
end

puts "Please give me a number:"
number = gets.chomp.to_i

#This is what I got after I watched the video! Much better, no?

def number_eval1(number)
  if number < 0
    puts "Please do not enter negative numbers!"
  elsif number <= 50
    puts "The number " + number.to_s + " is between 0 and 50"
  elsif number <= 100
    puts "The number " + number.to_s + " is between 51 and 100"
  else 
    puts "The number " + number.to_s + " is more than 100"
  end
end

def number_case1_eval(number)
  case 
  when number < 0
    puts "Please do not enter negative numbers!"
  when number <= 50
    puts "The number " + number.to_s + " is between 0 and 50"
  when number <=100
    puts "The number " + number.to_s + " is between 51 and 100"
  else  
    puts "The number " + number.to_s + " is more than 100"
   end
end

def number_case2_eval(number)
  case number
  when 0..50
    puts "The number #{number} is between 0 and 50"
  when 51..100
    puts "The number #{number} is between 51 and 100"
  else
    if number < 0
      puts "Please don't put a negative number!!!!!"
    else
      puts "The number #{number} is above 100"
    end
  end
end


puts "Please give me a number:"
number = gets.chomp.to_i

puts number_eval1(number)
puts number_case1_eval(number)
puts number_case2_eval(number)


#6. why do you get the error and how can you fix it.

    def equal_to_four(x)
      if x == 4
        puts "yup"
      else
        puts "nope"
      end #<--- this last end was missing
    end

    equal_to_four(5)