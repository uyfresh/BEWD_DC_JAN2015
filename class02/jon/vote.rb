# Asks the user for their age
puts "What is your age?"
age = gets.chomp.to_i

# Asks the user for their citizenship
puts "What country is your citizenship?"
citizenship = gets.downcase.chomp

# if they can vote, tell them to vote
if age >= 18 && citizenship == "us"
	puts "Go out and vote!"
# if they are not old enough, but American, tell them to grow faster
elsif citizenship == "us"
	puts "You need to grow faster!"
# otherwise tell them better luck next time
else
	puts "Better luck next time!"
end