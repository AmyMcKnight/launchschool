#1. Below we have given you an array and a number. 
#Write a program that checks to see if the number appears 
#in the array.

arr = [1, 3, 5, 7, 9, 11]
puts "Please enter a number"
number = gets.chomp.to_i

if arr.include?(number)
  puts "The number #{number} is in the array."
end


arr.each do |num|
  if num == number
    puts "The number #{number} is in the array."
  end
end

#2. What will the following programs return? What is value of 
#arr after each?

# 1. arr = ["b", "a"]
# arr = arr.product(Array(1..3))
# the above would return
# arr = [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
# arr.first.delete(arr.first.last)
# the above deletes the last number of the first array
# so it returns
# [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] 

# 2. arr = ["b", "a"]
# arr.product([Array(1..3)])
# the above array would return
# [["b", [1, 2, 3]], ["a", [1, 2, 3]]] 
# arr.first.delete(arr.first.last)
# the above deletes the last array in the first set of arrays
# so it returns [["b"], ["a", [1, 2, 3]]] 

# After watching the video I realized that it was ok to use irb!
# I had been trying to figure it out in my head!
# understand what I was/ am supposed to do!

# 3. How do you print the word "example" from the 
# following array?

arr = [["test", "hello", "world"],["example", "mem"]]

puts arr.last.first

# or

puts arr[1][0]

#4. What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

  # 1. arr.index(5) = 3

  # 2. arr.index[5] =
  #NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
    # from (irb):2
    # from /Users/macuser/.rvm/rubies/ruby-2.2.3/bin/irb:15:in `<main>'


  # 3. arr[5] = 8


#5. What is the value of a, b, and c in the following program?

  string = "Welcome to America!"
a = string[6] #e
b = string[11] #A
c = string[19] #nil

#6. You run the following code...

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody' #jody replaces margaret in the spot.


#7. 

arr = [1, 2, 3, 4, 5, 6]
new_arr = []

arr.each do |num|
  new_arr << num + 2
end

p arr
p new_arr


