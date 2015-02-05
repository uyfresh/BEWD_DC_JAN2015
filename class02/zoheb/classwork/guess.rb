number = rand(1..10)

puts "Guess a number between 1 and 10!"
guess = gets.chomp.to_i
count = 1
while guess != number
	puts "Guess another number between 1 and 10!"
	count += 1
	if guess > number
		puts "Your guess was too high!"
	else
		puts "Your guess was too low!"
	end
	guess = gets.chomp.to_i
end
puts "Congrats, you got it!"
puts "You took #{count} tries!"