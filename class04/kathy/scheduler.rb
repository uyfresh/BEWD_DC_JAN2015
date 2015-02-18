
def time (mil, clock)
number = gets.chomp
if number < 12
return "#{number}AM"
if number > 12
	return "#{number-12}PM"
end


def to_time(hour)
	if hour == 0
		return "12 AM"
	elsif hour < 12
		return "#{hour}AM"
	elsif hour == 12
		return "12PM"
	else 
		return "#{{hour-12}PM:}"
	end
end

def schedule_meeting (start_hour, number_of_hours)
	formatted_start = to_time(start_hour)
	formatted_end = to_time(start_hour = number_ of_hours)
	puts "Your meeting will start at #{formatted_start},"
	puts "and will end at #{formatted_end}"
	