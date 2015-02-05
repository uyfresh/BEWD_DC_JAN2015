number = 1 + rand(10)
# puts number

puts "I've chosen a number from 1 to 10, guess what it is!"
guess = gets.chomp.to_i
guesses_used = 0

while guess != number
  guesses_used += 1
  if guess > number
    puts "too high, try again"
    guess = gets.chomp.to_i
  elsif guess < number
    puts "too low, try again"
    guess = gets.chomp.to_i
  end
end
puts "Affirmative!"
puts "it took you #{guesses_used + 1} tries"

