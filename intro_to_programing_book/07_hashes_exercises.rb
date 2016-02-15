# Exercises
# 1. Given a hash of family members, with keys as the title 
# and an array of names as the values, use Ruby's built-in 
# select method to gather only immediate family members' names 
# to a new array.




family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immeditate_family = family.select do |k, v| 
  k == :sisters || k == :brothers
end

arr = immeditate_family.values.flatten

p arr

# 2. Look at Ruby's merge method. Notice that it has two 
# versions. What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.

first_hash = {name: "Danielle"}
second_hash = {age: 36, height: "5 ft 3 in"}
first_hash.merge(second_hash)
# {:name=>"Danielle", :age=>36, :height=>"5 ft 3 in"} eveything is the same

first_hash = {name: "Danielle"}
second_hash = {age: 36, height: "5 ft 3 in"}
first_hash.merge!(second_hash)
# {:name=>"Danielle", :age=>36, :height=>"5 ft 3 in"} the original caller is permenantly merged.

# second try after looking at solution

first_name = {name: "Danielle"}
information = {age: 36, height: "5 ft 3 in"}

puts first_name.merge(information)
puts first_name
puts information
puts first_name.merge!(information)
puts first_name
puts information

#3. Using some of Ruby's built-in Hash methods, 
# write a program that loops through a hash and prints 
# all of the keys. Then write a program that does the same 
# thing except printing the values. Finally, write a program 
# that prints both.

animal_group = {alligators: "congregation", ants: "army", bacteria: "culture", bass: "shoal", cheetahs: "coalition", finches: "charm"}
animal_group.each_key { |key| puts key}
animal_group.each_value { |value| puts value}


# 4. Given the following expression, how would you access 
# the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person[:name]

# 5. What method could you use to find out if a Hash contains 
# a specific value in it? Write a program to demonstrate this use.

# has_value?

animal_group = {alligators: "congregation", ants: "army", bacteria: "culture", bass: "shoal", cheetahs: "coalition", finches: "charm"}
 
if animal_group.has_value?("army")
  puts "It is there."
else
  puts "It isn't there"
end

# 6. Given the array. . .

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that are anagrams.  

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

# so didn't figure that one out on my own. will need to study deeper on this part.

# 7. Given the following code. . .

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# first thought "The first is an example of the new way of doing it the second is an example of the old"
# nope. First hash was created with x being used as a 'symbol' second was created with 'x' as a variable and the string being passed into it. 

# 8. If you see this error, what do you suspect is the most likely problem?

# B.

