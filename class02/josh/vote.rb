

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "What is your citizenship?"
citizenship = gets.chomp

if (age > 18) && (citizenship=="american")
	puts "You better vote"
elsif (citizenship=="american")
	puts "Grow faster"
else 
	puts "Better luck next time"
end
