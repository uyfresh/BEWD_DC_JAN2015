puts "What is player 1's play?"
first = gets.chomp

puts "What is player 2's play?"
second = gets.chomp

beats = {
  "rock" => "scissors",
  "scissor" => "paper",
  "paper" => "rock"
}

if beats[second] == first
  puts "Player 2 wins!"
elsif second == first
  puts "Tie!"
else
  puts "Player 1 wins!"
end
