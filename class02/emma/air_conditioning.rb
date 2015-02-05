# intitial set up
puts "What is the current temperature?"
temp_current = gets.chomp.to_i
puts "Is the AC functional?"
functional = gets.chomp.upcase
puts "What temp would you like it to be?"
temp_wish = gets.chomp.to_i
count = 1

#conditions
if functional == "YES" && temp_current > temp_wish
	puts "Turn on the A/C Please"
elsif functional == "NO" && temp_current > temp_wish
	puts "Fix the AC now! It's Hot!"
elsif functional == "NO" && temp_current < temp_wish
	puts "Fix the AC whenever you have a chance... It's cool... "
else 
	puts "Looks like you need a space heater...not an air conditioner"
end

