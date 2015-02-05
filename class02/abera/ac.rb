#Air Conditioning
#sk the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.
puts "What is the current temperature in your office?" 

current_temperature = gets.chomp.to_f

puts "Does the A/C function properly? (yes/no)"

ac_functional = gets.chomp

puts "What is your desire temperature in the office?"

desire_temp = gets.chomp.to_f


if ac_functional == "yes" && current_temperature >= desire_temp
	puts "Turn on the AC Please"

elsif 
	ac_functional == "no" && current_temperature >= desire_temp
	puts "Fix the A/C now! It's hot!"

 elsif
 	ac_functional == "no" && current_temperature <= desire_temp
	puts "Fix the A/C whenever you get a chance"

end

#sk the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.
#If the airconditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
#If the airconditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now! It's hot!"
#If the airconditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance... It's cool..."

