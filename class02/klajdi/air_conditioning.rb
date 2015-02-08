puts "What is the current temperature?"
current_temp = gets.chomp.to_i
puts "Is the A/C functional?"
ac = gets.downcase.chomp	
puts "What would you like the temperature to be?"
ideal_temp = gets.chomp.to_i	


if ac == "yes" && current_temp > ideal_temp
	puts "Turn on the A/C please"
elsif ac != "yes" && current_temp > ideal_temp
	puts "Fix the A/C now! It's hot!" 
elsif ac == "yes" && current_temp < ideal_temp
	puts "Turn on the heat!"
else
	puts "Turn on the heat if you're cold, and fix the A/C when you get a chance"
end
