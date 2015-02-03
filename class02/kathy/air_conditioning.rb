



puts "Welcome to your room in our tropical resort! We want to make sure the climate is to your liking!"
puts "What's the temperature in your room right now?"
room_temp = gets.to_i
puts "The room is " + room_temp.to_s + "."
puts "OK, is the air conditioner working?"
acanswer = gets.chomp.downcase
if acanswer == "yes"
	puts "Great!"
else 
	puts "Uh oh. We'll have to send maintenance."
end
puts "What temperature would you like the room to be?"
desired_temp = gets.to_i
if desired_temp < room_temp && acanswer == "yes"
	puts "Turn on the A/C please."
elsif desired_temp > room_temp && acanswer == "yes"
	puts "Turn off the A/C please."
elsif desired_temp < room_temp && acanswer == "no"
	puts "Fix the A/C now! It's hot!"
elsif desired_temp > room_temp && acanswer == "no"
	puts "Fix the A/C when you can. It's cool."
end
