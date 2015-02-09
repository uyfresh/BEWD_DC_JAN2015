

# dwarves = ['happy', 'grumpy', 'dopey', 'sleep', 'bashful', 'doc', 'sneezy']

# dwarves.each do |dwarf|
# 	puts "High ho! I am #{dwarf}"
# end

# dwarves = ['happy', 'grumpy', 'dopey', 'sleep', 'bashful', 'doc', 'sneezy']

# dwarves.each do |dwarf|
# 	puts "High ho! I am #{dwarf.upcase}"
# end

# numbers = [1,2,3,4,5,6,7]

# squares = []
# numbers.each do |number|
# 	square = number * number
# 	squares.push(square)
# end

# squares = numbers.map do |number|
# 	number * number
# end


less_than_4 = []
numbers.each do |number|
	if number < 4
		less_than_4.push(number)
	end
end

less_than_4 = numbers.select. do |number|
	number < 4
end