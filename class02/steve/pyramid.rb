#Ask the user for a character
puts "Please enter a keyword character"
char = gets.chomp

#Ask the user how many rows they want in the pyramid
puts "How many rows would you like in your pyramid???"
rows = gets.chomp.to_i

#Ask the user if they want their pyramid upside-down
puts "Would you like your pyramid upside-down??? (yes/no)"
inverted = gets.chomp.downcase

#Create variable "i"
i = nil

#Determine how wide the pyramid will be
width = (rows * 2)

if (inverted == "no")
	i = 1
	while (i < width)
		puts (char * i).center(width)
		i += 2
	end
else
	i = width - 1
	while (i > 0)
		puts (char * i).center(width)
		i -= 2
	end
end