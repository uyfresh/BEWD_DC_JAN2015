require 'pry'


class Lightbulb
#initialize allows you to store data on a created object
	def initialize (color)
		@color = color
		@on = false

	end

#creating this method allows you to see what's insite the initialize data
def on?
	return @on
end

#getter
def color
	return @color
end

#setter-- allows you to make transformations or normalize input data
def color = (color)
	@color = color.downcase
end

	def turn_on
	puts "light is on"

	end

def turn_off
@on = false
end

def toggle
	@on = !on?
end



end

bulb = Lightbulb.new

binding.pry