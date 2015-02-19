# This is how you comment in Ruby

# puts "hello"
# puts "my name is Peter"
# puts "2 + 2 is #{2+2}"

# This part of the program asks and prints a name
# puts "what is your name?"
# name = gets.chomp
# puts "what a wonderful name #{name} is"

# if 4 > 5
# 	puts "The world is backwards"
# end

# if 5 > 4
# 	puts "everything is okay"
# end

# if !(1 == 2) && 2 > 1
# 	puts "it is true"
# end

# if 4 > 5
# 	puts "four bigger than five"
# elsif 3 > 4
# 	puts "five bigger than four"
# else
# 	puts "everything before me was false"
# end

# name = "peter"
# if name == "emma"
# 	puts "hi emma"
# else
# 	puts "hello"
# end


###################


# while loops

# name = "peter"
# while name != "stop"
# 	puts "Hello #{name}"
# 	puts "enter another name or stop"
# 	name = gets.downcase.chomp
# end

# puts "what is 2 to the 16th power?"
# answer = gets.chomp.to_i
# while answer != 2 ** 16
# 	puts "what is 2 to the 16th power?"
# 	answer = gets.chomp.to_i
# end

count = 10
while count > 0
	puts count
	count = count - 1
end
puts "Happy new year"



