# dwarves = ['happy', 'grumpy', 'dopey', 'sleepy', 'bashful', 'doc', 'sneezy',]

# dwarves.each do |dwarf|
# 	puts "High ho! I am #{dwarf}"
# end

numbers =[1,2,3,4,5,6,7]

numbers.each do |digit|
	puts "#{digit ** 2}"

end


less_than_4 = numbers.select do |number|
	number < 4
end