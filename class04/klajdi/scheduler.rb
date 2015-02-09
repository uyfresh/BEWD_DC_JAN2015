require 'pry'

def to_time(hour)
	if hour == 0
		return "12AM"
	elsif hour < 12
		return "#{hour}AM"
	elsif hour == 12
		return "12PM"
	else
		return "#{hour - 12}PM"
	end
end

def schedule_meeting(start, length)
	to_time(start)
	meeting_length = to_time(start + length)
	puts "Your meeting starts at #{to_time(start)}, and will end at #{meeting_length}"
end

binding.pry