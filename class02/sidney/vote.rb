puts "Hello"
puts "Please enter you age"
age = gets
puts "If you are an American citizen, enter \"Y\""
response = gets
if age.to_i > 20 && response.upcase == 'y'
	puts "You can vote"
elsif 
		age.to_i < 21 && response.upcase == 'Y'
		puts "You need to grow up more!"
elsif response.upcase != 'Y'
	

	puts "better luck next time."
end 