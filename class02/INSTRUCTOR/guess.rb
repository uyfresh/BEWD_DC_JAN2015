secret_num = rand(11)

puts "guess a number between 0 and 10"
guess = gets.chomp.to_i
guesses_used = 1

while secret_num != guess
  puts "you are WRONGGGG"
  guesses_used += 1
  if guess > secret_num
    puts "you guessed too high"
  else
    puts "you guessed too low!"
  end  
  puts "guess again"
  guess = gets.chomp.to_i
end

puts "you win! FINALLY"
puts "you took #{guesses_used} tries"