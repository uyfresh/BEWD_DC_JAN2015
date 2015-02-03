
# Ask the user for a character
puts "Please enter a character:"
char_input = gets.chomp

# Ask the user for the number of rows in the pyramid
puts "How many rows do you want in your pyramid?"
num_rows = gets.chomp.to_i

# Ask the user if they want their pyramid upside-down and print it the way that they want it.
puts "Do you want your pyramid upside-down? y or n?"
pyramid_direction = gets.chomp


counter = 1

# Print out a simple ASCII art pyramid
if (pyramid_direction == "y")
	while counter <= num_rows
		puts (char_input * num_rows).center(30)
		num_rows -= 1
	end
elsif (pyramid_direction =="n")
	while counter <= num_rows 
		puts (char_input * counter).center(30)
		counter += 1
	end
else puts "You did not follow directions....."  
end

# Ask the user if they want their pyramid upside-down and print it the way that they want it.