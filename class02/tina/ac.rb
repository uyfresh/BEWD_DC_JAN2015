puts "What is the temperature?"
# Ask the user what is the current temperature
current_temperature = gets.chomp
puts "Is the A/C funtional Yes or No?" 
functional  = gets.chomp
puts "What is your desired temperature?"
desired_temperature = gets.chomp


if functional == "Yes" && current_temperature > desired_temperature
	puts "Turn on the A/C Please"

elsif  functional == "No" && current_temperature > desired_temperature
	puts "Fix the A/C now! It's hot"

else 
	puts "Fix the A/C/ whenever you have the chance...It's cool..."
	
		
	
end