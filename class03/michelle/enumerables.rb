dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']
dwarves.each do |dwarf|
	puts "High ho! I am #{dwarf.capitalize}"
end

#.each "do" and "end" are key words

numbers = [1,2,3,4,5,6,7]
numbers.each do |number|
	puts number ** 2
end

squares = []
numbers.each do |number|
	square = number * number
	squares.push(square)
end


squares = number.map do |number|
	number * number
	squares.push(square)
end

#the above code does the same thing as the one above it. It's just a shortcut.


less_than_4 = []
less_than_4 [1,2,3]
numbers.each do |number|
	if number < 4
		less_than_4.push(number)
	end
end

less_than_4 = numbers.select do |number|
	number < 4
end



