#ask user to guess a number between 0 and 10
secret_num = 4

puts "Guess a number between 1 and 10"
guess = gets.chomp.to_i

while secret_num != guess
	puts "Guess again!"
	guess = gets.chomp.to_i
	guess = gets.chomp.to_i
end
puts "You win!"
		