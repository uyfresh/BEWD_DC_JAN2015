require 'pry'

def to_time (hour)
if hour == 0
	return "12AM"
 elsif hour < 12
 	return "#{hour}AM"
 elsif  hour == 12
 	return "12PM"
 else
 	return "#{hour-12}PM"
  end
 end 	
 			


# schedule_meeting(11, 2)
# -> "Your meeting "

def schedule_meeting(start_hour, number_of_hours)
	formatted_start = to_time(start_hour)
	formatted_end = to_time(start_hour)
	puts "Your meeting will start at #{formatted_start},"
	puts "and will end at #{formatted_start},"
end		
		