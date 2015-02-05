puts "What character would you like to use for your pyramid?"
character = gets.chomp

puts "How many rows do you want your pyramid to be?"
pyramid_rows = gets.chomp.to_i

# BONUS
# puts "Would you like your pyramid to be upside-down?"

puts "Here is your pyramid!"

count = 1
width = pyramid_rows * 2

pyramid_rows.times do
	puts (character * count).center(width)
	count += 2
end
