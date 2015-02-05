#Get the current temperature from the user
puts "Hello, what is the current temperature???"
temp = gets.chomp.to_i

#Determine if the air conditioner is currently work
puts "Does the A/C work? (yes/no)"
working = gets.chomp.downcase

#What temperature do they want the A/C set to
puts "What temperature would you like the air set to?"
temp_set = gets.chomp.to_i

if (working == "yes") && (temp > temp_set)
	puts "Turn off the A/C Please"
elsif (working == "no") && (temp > temp_set)
	puts "Fix the A/C now! It's hot!"
else (working == "no") && (temp < temp_set)
	puts "Fix the A/C whenever you have the chance...It's cool..."
end