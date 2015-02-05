puts "Is the airconditioner running?"
	running = gets.chomp
puts "What is the current temperature?"
	current_temp = gets.chomp
puts "What temperature would you like it to be?"
	desired_temp = gets.chomp

if current_temp > desired_temp && running == "yes" 
	puts "Turn on the A/C Please"
end

if current_temp > desired_temp && running == "no"
	puts "Fix the A/C now! It's hot!"
end

if current_temp < desired_temp && running == "no"
	puts "Fix the A/C whenever you have the chance... It's cool..."
end
