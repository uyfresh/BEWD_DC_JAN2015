secret_num = rand(10)

puts "guess a number between 1 and 10"
guess = gets.chomp.to_i
count = 1

while secret_num != guess
	puts "you are Wrong"
	count = count + 1
	if guess > secret_num
		puts "you guessed too HIGH"
	else
		puts "You guessed too LOW"
	end
	puts "guess again"
	guess = gets.chomp.to_i
end

puts "You Won"
puts "you took #{count} tries"