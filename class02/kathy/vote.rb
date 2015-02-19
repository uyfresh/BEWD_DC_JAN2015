puts "Hello and welcome to campaign 2016"
puts "How old will you be on Election Day?"
age = gets.chomp.to_i
puts "Are you an American citizen, yes or no?"
citizenship = gets.chomp
if Age >= 18 && Citizenship == "yes"
	puts "Congratulations! You're eligible to vote. Be sure to get to the polls."
if Age < 18 and Citizenship == "yes"
	Puts "Grow faster!"
else "Too bad you're not a citizen. Better luck next time!"
end