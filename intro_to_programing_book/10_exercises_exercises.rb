# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

arr =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |number|
  puts number
end

# method shown in video below

arr.each {|number| puts number}

#2. Same as above, but only print out values greater than 5.

arr =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |number|
  if number > 5
    puts number
  end
end

# method as altered in video
arr =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.each do |number|
  puts number if number > 5
end

#3. Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

arr =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

new_arr = arr.select do |number|
  number % 2 != 0
end

# 4. Append "11" to the end of the original array. Prepend "0" to the beginning.

arr << 11
arr.unshift(0)

# 5. Get rid of "11". And append a "3".

arr.pop
arr << 3

#or
arr.push(3)

# 6. Get rid of duplicates without specifically removing any one value.

arr.uniq

# 7. What's the major difference between an Array and a Hash?

# Hashes have key value pairs. That can be referenced by keys.

# 8. Create a Hash using both Ruby syntax styles.

hash_one {:lion => "pride"}
hash_new {lion: "pride"}

# 9. Suppose you have a hash h = {a:1, b:2, c:3, d:4}

# 1. h[:b]

# 2. h[:e] = 5

# 3. 

 h.delete_if do |k, v|
    v < 3.5
  end

# 10. Can hash values be arrays? Can you have an array of hashes? (give examples)

# Yes they can.

hash = {animals: ['cats', 'dogs', 'birds', 'rodents']}
arr = [{animal: 'cat'}, {animal: 'dog'}, {animal: 'bird'}, {animal: 'rodent'}]

# 11. Look at several Rails/Ruby online API sources and say which one you like best and why.
# honestly can't say that I'm in a postion to really grade the types that I like best! but I did find a neat list of other tutorials here https://www.ruby-lang.org/en/documentation/

# 12. Given the following data structures. Write a program that moves the information from the array into the empty hash that applies to the correct person.
# will totally need to review this/ studdy this/ understand this because i didn't have be beginning of an idea of where to start before watching the video!

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#puts contact_data[0]
#puts '--------------'
#puts contact_data[1]
#puts '--------------'

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

puts contacts

# 13. Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

# ok, so here is the hash that was created:

contacts = {"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"}, "Sally Johnson"=>{:email=>"123-234-3454"}}

# to get Joe's email i'll need to acess it using the key value pair

puts "Joe's email is: #{contacts["Joe Smith"][:email]}"

# we do the same for Sally's

puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

# 14. In exercise 12, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 12, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# this is another one where i needed to walk through it with the video. 

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone] # ya'll made it harder than it was when you first shot the video! This line is missing from our start code but in the video :-)

contacts.each do |name, hash|
  fields.each  do |field|
    hash[field] = contact_data.shift
  end
end

puts contacts

# 15. Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |str|
  str.start_with?("s")
end

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |str|
  str.start_with?("s", "w")
end

# 16. Take the array below and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

a = a.map! {|sets| sets.split}

a = a.flatten

p a

# or

a.map! {|sets| sets.split}.flatten! # I'm getting error messages each time I try to run that but when I run
a.map{|pairs| pairs.split}.flatten # it works. . . just doen'st mutate the caller.

# 17. What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!" # This line of code runs
else
  puts "These hashes are not the same!"
end

# demonstrates the point that order isn't imporant with hashes whereas it is with arrays.