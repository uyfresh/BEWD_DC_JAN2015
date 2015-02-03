puts 'What is the current temperature?'
temperature = gets.chomp.to_i

puts 'Is the A/C functional? (Y/N)'
answer = gets.chomp

puts 'What is your desired temperature setting?'
desired = gets.chomp.to_i

if (answer == "Y") && (temperature > desired)
	puts "Turn on the AC please!"
elsif (answer == "N") && (temperature > desired)
	puts "Fix the AC now! It's hot!"
else 
	puts "Fix the AC whenever you have a chance... It\'s cool..."
end	

