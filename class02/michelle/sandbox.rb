# puts "My name is Michelle"
puts "2 + 2 is #{2+2}"

# puts "What is your name?"
# name = gets.chomp
# puts "What a wonderful name #{name} is"

if 4 > 5
	puts "The world is backwards"
end

if 5 > 4
	puts "Everything is okay."
end

if !(1 == 2) && 2 > 1
	puts "It is true."
end

if 4 > 5
	puts "Four bigger than five"
elsif 3 > 4
	puts "Five bigger than 4"
else
	puts "Everything before me was false"
end

name = "Michelle"
if name == "Emma"
	puts "Hi, Emma"
else
	puts "Hello"
end

#while loops

# name ="Michelle"
# while name != "stop"
# 	puts "Hello #{name}"
# 	puts "Enter another name or stop."
# 	name = gets.chomp
# end

# puts "What is 2 to the 16th power?"
# answer = gets.chomp.to_i
# while answer != 2 ** 16
# 		puts "What is 2 to the 16th power?"
# 		answer = gets.chomp.to_i
# 	end

count = 10
while count > 0
		puts count
		count = count - 1
	end
	puts "Happy New Year!"



