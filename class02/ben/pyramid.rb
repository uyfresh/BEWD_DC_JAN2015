# GA_BEWD: benlcollins
#
# Homework assignment Week 2
#
# ASCII Pyramid Art

# ask user for character
puts "Enter your (single) pyramid charater please:"
py_char = gets.chomp

# ask the user for the number of rows in the pyramid
puts "How many rows would you like in your pyramid?"
py_rows = gets.chomp.to_i

# ask the user which way up they would like their pyramid
puts "Would you like your pyramid upside down (Y/N)?"
py_orientation = gets.chomp.upcase

# declare a counting variable
i = 1

if py_orientation == "Y" # upside down case
	while i <= py_rows
		puts " " * (i - 1) + py_char * (2 * (py_rows - i) + 1)
		i += 1
	end
else # right way up case
	while i <= py_rows  
		puts " " * (py_rows - i) + py_char * (i * 2 - 1)
		i += 1
	end
end