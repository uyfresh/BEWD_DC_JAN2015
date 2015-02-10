puts "Pick a character to build your pyramid"
character = gets.chomp
puts "How many rows of '#{character}' would you like?"
rows = gets.chomp.to_i
puts "Do you want your pyramid upside down?"
up_down = gets.downcase.chomp

character_count = 1
character_count2 = rows * 2 + 1
width = rows * 2
width2 = rows * 2 + 1

# As long as rows variable * 2 is greater than one 
# and if the user doesn't want the pyramid to print upside down 
# then print the pyramid right side up by..
while (rows * 2) >= character_count
if up_down == "no"
# looping character_count and adding two to it until it becomes greater than 
# rows * 2
# also centers the pyramid
	puts (character * character_count).center(width)
	character_count += 2
# if user wants the pyramid upside down
# then start counts at number of rows user wants * 2 + 1
# and count down by two
else 
	puts (character * character_count2).center(width2)
	if character_count2 > 1
	character_count2 -= 2
	else
	break		
end
end
end

