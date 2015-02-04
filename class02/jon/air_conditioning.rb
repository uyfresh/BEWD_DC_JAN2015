# HW 02

# Ask the user for the current temp, desired temp, and whether the A/C is working
puts "What is the current temperature?"
current_temp = gets.chomp.to_i

puts "Is the A/C functional?"
ac_functional = gets.chomp.downcase

puts "What temperature do you wish it was?"
desired_temp = gets.chomp.to_i

# Test the various conditions

if ac_functional == "yes"
  if current_temp > desired_temp
    puts "Turn on the A/C Please"
    # Add this code to tell them to turn up the heat if it's too cold
    # else
    # 	puts "Turn on the heat!"
  end

elsif ac_functional == "no"
  if current_temp > desired_temp
    puts "Fix the A/C now! It's hot!"
  elsif
    puts "Fix the A/C whenever you have the chance... It's cool..."
  end
end
