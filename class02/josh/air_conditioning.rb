

# Air Conditioning
# Ask the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.

puts "What is the current temperature"
temperature = gets.chomp.to_i

puts "Is the A/C functional. Type y or n"
ac_functionality = gets.chomp

puts "What temperature do you want it to be"
desired_temp = gets.chomp.to_i

# If the airconditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
# If the airconditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now!  It's hot!"
# If the airconditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance...  It's cool..."

if ((ac_functionality == "y") && (temperature > desired_temp))
	puts "Turn on the A/C please!!!!!"
elsif ((ac_functionality == "n") && (temperature > desired_temp))
	puts "Fix the A/C now! It's hot!!!!!!"
elsif ((ac_functionality == "n") && (temperature < desired_temp))
	puts "Fix the A/C whenever you have the chance....it's cool!"
else 
	puts "Turn off the A/C - It's cold in here!"
end

