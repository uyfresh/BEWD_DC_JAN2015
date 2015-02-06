require 'pry'


# 1) Time-formatting method
# It should do this:

# to_time(0) -> "12AM" 
# to_time(8) -> "8AM" 
# to_time(12) -> "12PM" 
# to_time(15) -> "3PM"

def to_time(hour)
	if hour < 12 && hour != 0
		return "#{hour}AM"
	elsif hour == 12
		return "#{hour}PM"
	elsif hour > 12
		hour2 = hour - 12
		return "#{hour2}PM"
	elsif hour == 0
		return "12AM"
	end
end


# 2) Meeting scheduler method
# It should do this:

# schedule_meeting(11, 2)
# -> "Your meeting starts at 11AM, and will end at 1PM."

def schedule_meeting(start,length)
	meet_end = start + length
	if meet_end < 24
		start_form = to_time(start)
		meet_end_form = to_time(meet_end)
		puts "Your meeting starts at #{start_form}, and will end at #{meet_end_form}."
	elsif meet_end >= 24
		start_form = to_time(start)
		meet_end_2 = meet_end - 24 
		meet_end_form = to_time(meet_end_2)
		puts "Your meeting starts at #{start_form}, and will end at #{meet_end_form}."
	end
end

binding.pry