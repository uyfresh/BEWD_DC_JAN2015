require 'pry'

class Lightbulb
	def initialize(color = "white")
		@color = color
		@on = false # @on is a variable. It is inside the black box. 
	end

	# "getter" -> provides encapsulated data to outside world. 
	def color
		return @color
	end
	#  "setter"
	def color=(color) # note that the method is called "color="
		@color = color
	end

	def on? # You can use this question mark to tell us data from the black box.
		return @on
	end

	def turn_on #turns the light on
		@on = true
	end

	def turn_off
		@on = false
	end

	def toggle
		@on = !on?
	end
end

# This line creates the object. 
bulb = Lightbulb.new('green') # This is an object that can have a method called on it. 

binding.pry