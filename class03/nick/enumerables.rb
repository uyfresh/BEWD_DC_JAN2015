require 'pry'
#each excersises

# dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']

# dwarves.each do |dwarf|
# 	puts "High ho! I am #{dwarf}"
# end

#squares excersise
# numbers = [1,2,3,4,5,6,7]
# squares = []
# numbers.each do |number|
# 	square = number * number 
# 	# puts "#{number * number}"
# 	squares.push(square)
# end
# print squares

#less than 4 excersise
numbers = [1,2,3,4,5,6,7]
less_than_4 = numbers.select do |number|
	number < 4
end
print less_than_4