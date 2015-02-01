#ask current temperature
puts "What is the current temperature in degrees Fahrenheit?"
current_temperature = gets.chomp.to_i

#ask if the A/C is functional
puts "Is the A/C curently working? (yes/no)"
functioning_answer = gets.downcase.chomp

#what temperature do you want
puts "What temperature do you want it to be?"
desired_temperature = gets.chomp.to_i

	if current_temperature > desired_temperature && functioning_answer == "yes"
		puts "Turn the A/C on, please!"
	elsif current_temperature > desired_temperature && functioning_answer == "no"
		puts "Fix the A/C now! It's hot!"
	elsif current_temperature < desired_temperature && functioning_answer == "no"
		puts "Fix the A/C whenever you have the chance. It's cool..."
	else 
		puts "Seems like you're sitting pretty with your air conditioning unit!"
	end
		
		
