dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']

dwarves.each do |dwarf|
		puts "High ho! I am #{dwarf}"
end

numbers = [1, 2, 3, 4, 5, 6, 7]
new_array = []
less_than_4 = []

numbers.each do |number|

		square = number*number
		new_array.push(square)
		
	end

squares = numbers.map do |number|
	number*number
end


less_than_4 = numbers.select do |number|
	number<4
end

puts less_than_4
#puts new_array