# initial prompts to start 
puts "pick a character!"
character = gets.chomp
puts "how many rows would you like?"
rows = gets.chomp.to_i
space = " "
character_place = 1
puts "would you like to flip your pyramid?"
answer = gets.chomp.upcase

# pyarmid options
if answer == "NO"
	while rows > 0 
		puts "#{space*(rows)} #{character*character_place}"
		rows = rows - 1
		character_place = character_place + 2
	end
else 
	while rows >= 0 
		puts "#{space*character_place}#{(character*((rows)*2)-1)}"
		# this doesn't actually work, but I ran out of time
		rows = rows - 1
		character_place = character_place + 1
	end
end