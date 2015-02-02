puts "Could you give me a character? Just one."
character = gets.chomp
puts "How many rows do you want in your pyramid?"
rows = gets.to_i
rows_print = 0

while rows_print <= 2*rows
	while rows_print <= rows
		if rows_print % 2 == 0
			rows_print += 1
		else
			puts ("#{character}"*rows_print).center(2*rows) + "\n"
			rows_print += 1
		end
	end
	while rows_print >= rows && rows_print <= 2*rows
		if rows_print % 2 == 0
			rows_print += 1
		else
			puts ("#{character}"*rows_print).center(2*rows) + "\n"
			rows_print += 1
		end
	end
end