require 'pry'
def to_time (hour)
	if hour > 12 
		hour = hour - 12
		return "#{hour}PM"
	elsif hour == 0
		return "12AM"
	elsif hour == 12
		return "12PM"
	else
		return "#{hour}AM"
	end		
end



def schedule_meeting (start, length)
	puts "Your meeting starts at #{to_time(start)} and will end at #{to_time(start+length)}"

end

binding.pry