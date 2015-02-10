def schedule_meeting(start_hour, number_of_hours)
	formatted_start = to_time(start_hour)
	formatted_end = to_time(start_hour + number_of_hours)
	puts "Your meeting will starts at #{formatted_start}, and will end at #{formatted_end}."
end









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
#have to do something in the terminal