
puts "Hi, let's build a pyramid!"
puts "First, let's choose our style of brick. Pick a character on your keyboard."
char = gets.chomp
puts "Great! Now let's decide how tall the pyramid should be. How many rows of bricks do you want in your pyramid?"
rows = gets.chomp
puts "OK! You want a " + rows.to_s + " row pyramid built of " + char + "s."
puts char


while char.to_i <= rows.to_i
	char = char + char
	#line_width = rows.to_i
	puts char + char#.(center(line_width))
end






#Need to:
#create a while loop that sets the row number (-1) as the end condition
#need to convert the char additions to an integer
#establish a count that automatically runs a new row with one additional character up to the limit
#create a centering function for the characters
#create an array that encompasses the pyramid and can be reversed
