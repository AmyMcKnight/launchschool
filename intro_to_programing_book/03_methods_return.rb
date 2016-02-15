# return.rb

def add_three(number)
  number + 3
end

returned_value = add_three(4)
puts returned_value

# refactored with explicit return

puts

puts

def add_three(numbertwo)
  return numbertwo + 3 
  numbertwo + 4      # thhis line of code will not run
end

returned_value = add_three(4)
puts returned_value


# just assignment

def just_assignment(numberthree)
  foo = numberthree + 3
end

puts just_assignment(2)