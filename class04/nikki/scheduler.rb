require 'pry'

def to_time(hour)
  if hour == 0
    # puts "12AM"
    return "12AM"
  elsif hour > 12
    # puts "#{time-12}PM"
    return "#{hour-12}PM"
  elsif hour < 12 
    #puts "#{time}AM"
    return "#{hour}AM"
  elsif hour == 12
    # puts "12PM"
    return "12PM"  
  end
  
end

# def schedule_meeting(start, length)
#   finally = start + length
#   end_time = to_time(finally)
#   puts "Your meeting starts at #{start} and ends at #{end_time}"
# end 

# ^^ my attempt

# VV in class attempt

def schedule_meeting(start_hour, number_of_hours)
  formatted_start = to_time(start_hour)
  formatted_end = to_time(start_hour + number_of_hours)
  puts "Your meeting will start at #{formatted_start} and end at #{formatted_end}"

binding.pry