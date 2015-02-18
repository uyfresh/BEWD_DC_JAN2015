#Ask the user for their age
puts "How old are you?"
age = gets.chomp.to_i

#Asks if they are US citizens
puts "Are you american?"
citizenship = gets.downcase.chomp

#Compare age and citizenship to see if they can legally vote
if (age >= 18) && (citizenship == "yes")
	puts "Get out there and vote!"
elsif (citizenship == "yes")
	puts "Grow Faster!"
else
	puts "Better luck next time!"
end