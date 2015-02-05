# dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']

# dwarves.each do |dwarf|
# 	puts "High ho! I am #{dwarf.capitalize}."
# end

numbers = [1,2,3,4,5,6,7] # defines the numbers array

# squares = [] # defines the squares array
# numbers.each do |number| # starts the block for squaring 
# 	square = number**2 # squares the number
# 	squares.push(square) # pushes the squared number onto the squares array
# end
# print squares

#OR you can just use Ruby's Method. 
squares = numbers.map do |number| # .map on an array creates a transformed array
	number**2
end

puts "#{squares}"

# less_than_4 = []
# numbers.each do |number|
# 	if number < 4
# 		less_than_4.push(number)
# 	end
# end
# print less_than_4

#OR you can just use Ruby's method. 
less_than_4 = numbers.select do |number|
	number < 4 # the .select method checks if it's true or false and decides
end            # if it should be in the array. 

puts "#{less_than_4}"