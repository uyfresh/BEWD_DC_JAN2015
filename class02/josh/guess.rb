

number = rand(11)
puts "Guess a number between 1 and 10"
guess = gets.chomp.to_i
guesses_used = 1

while number != guess
	puts "You are wrong"
	guesses_used += 1
	if (number > guess)
		puts "You're too low"
		guess = gets.chomp.to_i
	elsif (number < guess)
		puts "You're too high"
		guess = gets.chomp.to_i
	end
	

end

puts "Congrats! You guessed correctly."
puts "It took you only #{guesses_used} times"
