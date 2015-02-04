# getting architectural specifications for the pyramid
puts "Please pick a character with which to build a pyramid"
building_block = gets.chomp

puts "How tall, in rows, would you like this pyramid to be?"
height = gets.chomp.to_i

puts "Do you want to defy gravity? Y/N?"
physics = gets.chomp.upcase


# counter, if loop/while loop

counter = 1

if physics == "N"
  while counter <= height
    puts " " * (height - counter) + building_block * (counter * 2 - 1)
    counter +=1
  end
elsif physics == "Y"
    while counter <= height
    puts " " * (counter + height) + building_block * (2 * (height - counter) + 1)
    counter += 1
  end
end


