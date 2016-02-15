#1. What does teh each method in the follwing program return 
#after it is finished executing?

x = [1, 2, 3, 4, 5]

x.each do |a|
  a + 1
end

# It would returne the numbers that are in the orignial array

#2. 

answer = " "

while answer != "STOP" do
  puts "Do you like apples?"
  answer = gets.chomp.upcase
end

#3. Use the each_with_index method to iterate through an array
#of your creation that prints each index and value of the array.

my_shopping_list = ["Soy Milk",
                    "Grillers",
                    "Stripples",
                    "Whole Grain Waffles",
                    "Blueberries"]

my_shopping_list.each_with_index do | item, index|
  puts "#{index + 1}. #{item}"
end

#4. Write a method that counts down to zero using recursion.

puts "Please give me a number:"
number = gets.chomp.to_i

def countdown(number)
  if number <= 0
    puts number
  else
    puts number
    countdown(number -1)
  end
end

puts countdown(number)

#I'm getting two 9s not sure why. . . think it has something to do 
#with one of the puts in the method

