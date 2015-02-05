# GA_BEWD: benlcollins
#
# Homework assignment Week 2
#
# Air Conditioning

# ask the user for current temperature
puts "What is the current temperature?"
current_temp = gets.chomp.to_i

# ask whether the air conditioning is functional
puts "Is the air conditioning working (Y/N)?"
ac_func = gets.chomp.upcase

# ask user what temperature they would like it to be
puts "What temperature do you wish it was?"
desired_temp = gets.chomp.to_i

# check conditions

if current_temp > desired_temp && ac_func == "Y"  # temp too hot & A/C works
	puts "Turn on the A/C Please"

elsif current_temp > desired_temp && ac_func == "N" # temp too hot & A/C doesn't work
	puts "Fix the A/C now!  It's hot!"

elsif current_temp < desired_temp && ac_func == "N" # temp too cold & A/C doesn't work
	puts "Fix the A/C whenever you have the chance...  It's cool..."

else # final outcome: temp too cold & A/C works. This was not in the spec?
	puts "Turn on the A/C and heat the room up please!"

end