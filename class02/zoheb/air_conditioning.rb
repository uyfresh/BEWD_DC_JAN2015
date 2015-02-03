puts "What is the current temperature?"
curr_temp = gets.to_f

puts "Is the AC functional? Yes or no?"
ac_func = gets.downcase

puts "What is your desired temperature?"
des_temp = gets.to_f

if ac_func = "yes" && curr_temp > des_temp
	puts "Turn on the A/C please."
elsif ac_func = "yes" && curr_temp < des_temp
	puts "Put on the heat please."
elsif ac_func = "no" && curr_temp > des_temp
	puts "Fix the A/C now!  It's hot!"
else 
	puts "Fix the A/C whenever you have the chance...  It's cool..."
end