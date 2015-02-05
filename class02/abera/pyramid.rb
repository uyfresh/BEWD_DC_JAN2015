# Simple ASCII Art

puts "Chose a character to build a pyramid" #Ask the you user to chose a character to build a pyramid.

character=gets.chomp.to_s

puts "How many rows do you want your pyramid to have?" #number of rows and width
n = gets.chomp.to_i
rows = 0
stars = 1
width = 100

 
until n == rows
	puts (character * stars).center(width) #centering the pyramid
	stars += 2
	rows += 1
end

puts "Do you want you pyramid upside-down? (yes/no)"

response = gets.chomp

	until n == rows
		puts (character * stars-1).center(width)
		stars +=2
		rows -=1
		
	end