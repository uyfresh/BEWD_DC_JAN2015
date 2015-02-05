#ask user for age
puts "How old are you?"
age = gets.chomp.to_i



#ask user for citizenship
puts "What is your citizenship?"
citi = gets.chomp

#tell user to vote if they can

if age >= 18 && citizenship == "American"
	puts "Go vote!"
elsif citizenship == "American"
	puts "Grow faster!"
else 
	puts "Better luck next time!"
end
	