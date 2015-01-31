puts "Hello, I would like to make you a pyramid. What is the first letter of your name?"
	symbol = gets.chomp
puts "How many rows would you like for your pyramid to have?"
	rows = gets.chomp.to_i

w=rows; 1.upto(w) { |i| puts ">"+" "*(w-i)+"#{symbol}"*(i*2-1)+" "*(w-i)+"<" }