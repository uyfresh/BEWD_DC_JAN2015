puts "What character do you want to make the pyramid out of?"
character = gets.chomp
# ask the user for a character

puts "How many rows of the #{character} in the pyramid?"
row_count = gets.chomp.to_i

character_count = 1cd
width = 100
		

 row_count.times do
			puts (character * character_count).center(width)
			character_count += 2
	
end
