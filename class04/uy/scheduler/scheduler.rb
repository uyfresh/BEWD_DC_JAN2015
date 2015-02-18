require 'pry'


# 1) Time-formatting method
# It should do this:
def to_time(hour)
	if hour == 0
		return "12AM"
	elsif hour < 12
		return "#{hour}AM"
	elsif hour == 12
		return "12PM"
	else
		return "#{hour-12}PM"
	end		
end

# to_time(0) -> "12AM" 
# to_time(8) -> "8AM" 
# to_time(12) -> "12PM" 
# to_time(15) -> "3PM"

# 2) Meeting scheduler method

def schedule_meeting (start_hour, number_of_hours)
	formatted_start = to_time(start_hour)
	formatted_end = to_time(start_hour + number_of_hours)
	puts "Your meeting will start at #{formatted_start},"
	puts "and will end at #{formatted_end}"
end


# It should do this:

# schedule_meeting(11, 2)
# -> "Your meeting starts at 11AM, and will end at 1PM."


binding.pry