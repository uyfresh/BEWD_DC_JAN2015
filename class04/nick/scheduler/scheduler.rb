require 'pry'


# 1) Time-formatting method
# It should do this:

def to_time(hour)
	if hour == 0
		puts "Midnight"
	elsif hour < 12
		puts "#{hour}AM"
	elsif hour == 12
		puts "Noon"
	else
		puts "#{hour-12}PM"
	end
end

# to_time(0) -> "12AM" 
# to_time(8) -> "8AM" 
# to_time(12) -> "12PM" 
# to_time(15) -> "3PM"




# 2) Meeting scheduler method
# It should do this:

# schedule_meeting(11, 2)
# -> "Your meeting starts at 11AM, and will end at 1PM."
def meeting_scheduler(time_a, length)
	formatted_start = to.time(time_a).to_f
	formatted_end = to_time(time_a + length)
	puts "Your meeting starts at #{formatted_start}, and will end at #{formatted_end}."
end

binding.pry