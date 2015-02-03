# puts "hello"
puts "my name is peter"
puts "2 + 2 is #{2+2}"

# this part of the program asks and prints a name
# puts "what is your name?"
# name = gets.chomp
# puts "what a wonderful name #{name} is"

if 4 > 5
  puts "the world is backwards"
end

if 5 > 4
  puts "everything is okay"
end

if true
  puts "it is true"
end

if 4 > 5
  puts "first statement true"
elsif 3 > 4
  puts "second statement true"
elsif false
  puts "third statement true"
elsif false
  puts "fourth statement true"
else
  puts "everything before me was false"
end

name = "peter"
if name == "emma"
  puts "hi emma"
else
  puts "hello"
end

# Create a new ruby program called vote.rb
# Ask the user for their age
# ask the user for their citizenship
# If they can vote, tell them to vote
# if they are not old enough but american, tell them to grow faster
# otherwise tell them better luck next time`

#######################

# while loops

# name = "peter"
# while name != "stop"
#   puts "hello #{name}"
#   puts "enter another name or stop"
#   name = gets.chomp
# end

puts "what is 2 to the 16th power?"
answer = gets.chomp.to_i
while answer != 2 ** 16
  puts "what is 2 to the 16th power?"
  answer = gets.chomp.to_i
end

count = 10
while count > 0
  puts count
  count = count - 1
end
puts "Happy new year!"