dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']

dwarves.each do |dwarf|
	puts "High ho! I am #{dwarf.capitalize} and I am #{dwarf}!"
end

numbers = [1,2,3,4,5,6,7]

squares = []

numbers.each do |root|
	square = root * root
	puts "#{root} is the square of #{square}"
	squares.push(square)
end

#Same as the example above

squares = numbers.map |number|
	number * number
end

less_than_4 = []
numbers.each do |number|
	if number < 4
		less_than_4.push(number)
	end
end

#Same as the example above

less_than_4 = numbers.select do |number|
	number < 4
end