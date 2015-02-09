require 'pry'

dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy']

dwarves.each do |dwarf_name|
	puts "Hi ho! I am a #{dwarf_name.upcase}"
end

numbers = [1,2,3,4,5,6,7]

# squares = []

# numbers.each do |num|
# 	square = num ** 2
# 	puts "The square root of #{num} is #{num * num}"
# 	squares.push(square)
# end.to_a

# squares = numbers.map do |num|
# 	num ** 2
# end


# binding.pry

# puts squares

# print squares

less_than_5 = []

# numbers.each do |num|
# 	if num < 4
# 		less_than_4.push(num)
# 	end
# end

# print squares

# print less_than_4

less_than_5 = numbers.select do |num|
	num < 5
end

print less_than_5