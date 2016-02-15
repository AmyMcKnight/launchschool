talk = Proc.new do
  put "I am talking"
end

talk.call

#----------------

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"