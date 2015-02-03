
guess = 1 + rand(10)
num = 0
guesses_used = 0

while num != guess
	print 'Guess a number between 1 and 10: '
    num = Integer(gets.chomp)

    if num != guess
        puts 'Haha, try again!'
        guesses_used += 1
	end

	if num > guess
		puts "Lower!"
	

	else num < guess
		puts "Higher!"
	end
end

puts 'You Win!'
puts "You used #{guesses_used} tries"