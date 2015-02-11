require 'pry'

class Lightbulb
	def initialize(color='white')
		@color = color
		@on = false
	end

# "getter" provides encapsulated data
	def color
		return @color
	end

# "setter"
	def color=(color)
		@color = color
	end

	def on?
		return @on
	end

	def turn_on
		@on = true
	end

	def turn_off
		@on = false
	end

	def toggle
		@on = !on?
	end

end

bulb = Lightbulb.new('green')

binding.pry