# Randomly generate a number
number = rand(0..10)
# use puts number to test
# puts number
# set number of guesses
x = 1
# Ask the user to guess the number
puts "Welcome to 'Guess the Number!' Please guess a number between 0 and 10:"
guess = gets.chomp.to_i
# If correct, congratulate the user

while guess != number
	if guess > number
		puts "Your guess is too high"
	else
		puts "Your guess is too low!"
	end
	puts "Guess again!"
	guess = gets.chomp.to_i
	x += 1
end
puts "Correct!"
puts "It took you #{x} guesses!"

# bonus 1: tell the user if they guessed too high or too low


# bonus 2: when the user guesses correctly, tell them how many guesses it took