require 'pry'

class Lightbulb
	
	def initialize(color)
		@color = color
		@on = false
	end

	def color
		return @color
	end

	def on?
		return @on
	end

	def turn_on
		@on = true 
	end

	def toggle
		@on = !on?
	end

end

bulb = Lightbulb.new('green')

binding.pry