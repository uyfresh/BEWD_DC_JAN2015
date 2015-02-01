#ask about pyramid
puts "Let's build a pyramid! What character do you want as your building blocks?"
	character = gets.chomp

# num. of rows
puts "How many rows of #{character}'s do you want your triangle to be?"
	rows = gets.chomp.to_i
character_count = -1
width = 100

while (rows * 2 - 2) >= character_count
	character_count += 2 
	puts (character * character_count).center(width)
	
end
