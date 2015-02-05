# ask user what the current temperature is
puts "What's the current temperature? (just numerical Fahrenheit value)"
current_temp = gets.to_i
puts = "What temperature do you wish it were now?"
working_ac = gets
puts "Is your A/C working properly? (yes or no)"
desired_temp = gets.to_i

while working_ac = "yes" && current_temp > desired_temp
	puts "Turn on the A/C please (if it's summer, of course)"
	if working_ac = "no" && current_temp >	desired_temp
	puts "Fix the A/C now! It's hot!"
else
	"Fix the A/C whenever you have the chance. It's cool..."
end

