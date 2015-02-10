require 'pry'

def to_time(time)
	if time > 12
		finaltime = time - 12
		return "#{finaltime} PM"
		# could also do ${hour-12}PM
	elsif time==12
		return "${time} PM"
	elsif time==0
		return "${time} AM"
	else 
		return "#{time} AM"
	end 
end


# 1) Time-formatting method
# It should do this:

# to_time(0) -> "12AM" 
# to_time(8) -> "8AM" 
# to_time(12) -> "12PM" 
# to_time(15) -> "3PM"


def schedule_meeting(start_hour, duration)
	formatted_start = to_time(start_hour)
	formatted_end = to_time(start_hour + duration)
	puts "Your meeting starts at #{formatted_start} and ends at #{formatted_end}"

end



# 2) Meeting scheduler method
# It should do this:

# schedule_meeting(11, 2)
# -> "Your meeting starts at 11AM, and will end at 1PM."


binding.pry