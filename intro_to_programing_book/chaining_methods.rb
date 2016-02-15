def add_three(n)
  n + 3
end

add_three(5)  # this will return 8

add_three(5).times { puts 'this should print 8 times'}

"hi there".length.to_s

def add_four(n)
  puts n + 2
end

add_four(5).times {puts "will this work?"} # nope becaus line 12 returns nil

def add_three(n)
  new_value = n + 3
  puts new_value
  new_value
end