# ask what the current temp is
puts "What is the current temperature?"
current_temp = gets.chomp.to_i

puts "Does the air conditioner work? Y/N?"
functional = gets.chomp.upcase

puts "What temperature do you wish it were?"
desired_temp = gets.chomp.to_i


if current_temp > desired_temp
  if functional == "Y"
    puts "Turn on the air conditioning, please"
  elsif functional == "N"
    puts "It's too hot, fix the air conditioning!"
  end
elsif current_temp <= desired_temp
  if functional == "Y"
    puts "It's cool."
  elsif functional == "N"
    puts "whenever you have a chance, fix the air conditioner"
  end        
end