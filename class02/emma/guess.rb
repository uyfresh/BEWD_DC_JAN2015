number = rand(11)
puts "I'm thinking of a number between 0 and 10.  Take a guess"
guess = gets.chomp.to_i
count = 1
while guess != number
	if guess > number
		puts "that was too high"
	else 
		puts "that was too low"
	end 
	puts "guess again"
	guess = gets.chomp.to_i
	count += 1
end
puts "congratulations! You were right.  It took you #{count} tries"