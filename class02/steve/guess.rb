x = 1

random = rand(11)
puts "#{random}"

puts "pick a number from 1 to 10"
guess = gets.chomp.to_i

if guess == random
	puts "You are correct!"
end

while guess != random
	if guess < random
		puts "Sorry, your guess was too low"
	else
		puts "Sorry, your guess was too high"
	end
	x += 1
	puts "Guess again"
	guess = gets.chomp.to_i			
end

puts "You are correct!"

puts "It took you #{x} guess!"