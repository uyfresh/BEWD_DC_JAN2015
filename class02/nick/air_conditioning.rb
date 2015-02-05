# Asks user what the current temperature (F) is?
puts "What is the current temperature?"
	current_temp = gets.chomp.to_i

# Asks if the A/C is functional?
puts "Is the A/C working?"
running = gets.downcase.chomp

# Asks what temperature they wish it was?
puts "What is your desired temperature?"
	desired_temp = gets.chomp.to_i

if current_temp > desired_temp && running == "yes"
	puts "Turn on the A/C Please!"
end

if current_temp < desired_temp && running == "yes"
	puts "Turn off the A/C Please!"
end

if current_temp > desired_temp && running == "no"
	puts "Fix the A/C now! It's hot!"
end

if current_temp <desired_temp && running == "no"
	puts "Fix the A/C whenever you have the chance...It's cool..."
end
puts "Have a nice day!"
