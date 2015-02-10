require 'pry'


# 1) Time-formatting method
# It should do this:

# to_time(0) -> "12AM" 
# to_time(8) -> "8AM" 
# to_time(12) -> "12PM" 
# to_time(15) -> "3PM"

def to_time(time)
	if time == 0
		return "12AM"
	elsif time < 12
		return "#{time}AM"
	elsif time == 12
		return "12PM"
	else time <=24
		return "#{time - 12}PM"
	# else
	# 	# days = time / 24
	# 	# return "#{time - 24 * days}AM"
	# 	return "Please choose an hour between 0 and 23"
	end
end

# 2) Meeting scheduler method
# It should do this:

# schedule_meeting(11, 2)
# -> "Your meeting starts at 11AM, and will end at 1PM."

def schedule_meeting(start,time)
	if start + time > 24
		return "Your meeting starts at #{to_time(start)}, and will end at #{to_time(start + time - 24)}"	
	end
	return "Your meeting starts at #{to_time(start)}, and will end at #{to_time(start + time)}"
end

binding.pry