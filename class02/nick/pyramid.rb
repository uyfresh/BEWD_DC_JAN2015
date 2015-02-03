puts "Hello, would you like to make a pyramid? Whats your favorite character?"
	chara = gets.chomp
puts "How many rows would you like to make your pyramid?"
	w = gets.chomp.to_i

puts "Here's your pyramid!"

w=w; 1.upto(w) { |i| puts ">"+" "*(w-i)+"#{chara}"*(i*2-1)+" "*(w-i)+"<" }

 