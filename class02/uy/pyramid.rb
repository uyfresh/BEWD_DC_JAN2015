puts "What character do you want to make a pyramid from?"
character = gets.chomp

puts "Awesome, you'll use #{character}'s to make the pyramid. How many rows do you want the triangle to be?"
row_count = gets.chomp.to_i

character_count = 1
width = 100

row_count.times do
	puts (character * character_count).center(width)
	character_count += 2
end

puts "Baaaam! Here's your pyramid."
