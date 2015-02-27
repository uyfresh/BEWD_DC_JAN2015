puts "We are making a pyramid!"

puts "Give me any character on your keyboard: "

character = gets.chomp

puts "how many rows do you want in your pyramid?"

number = gets.chomp.to_i

count = 1

width = 100

while count < number
	puts (character * count).center(width)
	count += 2
	
end