puts "What is the current temperature?"

current = gets.chomp.to_i

puts "Is the a/c functional?"

functional = gets.chomp.downcase

puts "what temperature do you wish it is?"

wish = gets.chomp.to_i

if functional == "yes" && current > wish
	puts "Turn on the A/C Please"
elsif functional == "no" && current > wish
	puts "Fix the A/C now! It\'s hot!"
elsif function == "no" && current < wish
	puts"Fix the A/C whenever you have the chance... It\'s cool..."
end