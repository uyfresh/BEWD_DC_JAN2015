
puts "what is your age"
age = gets.chomp.to_i
puts "what is your citizenship"
nationality = gets.chomp.upcase

if nationality != "AMERICAN"
	puts "better luck next time" 

else	
	if age < 18 
		puts "grow faster!"
	else
		puts "go vote!" 
	end
end
