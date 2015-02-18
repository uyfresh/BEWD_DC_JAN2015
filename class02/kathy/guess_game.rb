
# secret_num = 5

# puts "Hello! Can you guess what number I'm thinking of? It's between 0 and 10. Keep playing till you win."
# n = gets.chomp.to_i
# count = gets + 1
# if n == 7
# 	puts "Congratulations! You guessed the number. It took you {count} tries to get it!"
# elsif n < 7
# 	puts "Hmm. Try aiming higher next time."
# elsif n > 7
# 	puts "Uh oh! Try again! A little lower."

# end

secret_num = rand(11)

puts "guess a number betwen 0 and 10"
guess = gets.chomp.to_i
guesses_used = 1


