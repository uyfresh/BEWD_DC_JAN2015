require "pry"

dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']

dwarves.each do |dwarf|
	puts "High ho! I am #{dwarf}"
end

numbers = [1,2,3,4,5,6,7]

squares = []
numbers.each do |number|
	square = puts number ** 2
	squares.push(square)
end

squares = numbers.map do |number|
	number ** 2
end

less_than_4 = [1,2,3]

binding.pry
