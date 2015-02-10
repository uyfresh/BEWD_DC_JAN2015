
require 'pry'
class Lightbulb

	def initialize(color) 
		@color = color 
		@on = false
	end 

	def on?
		return @on
	end

	def color
		return @color
	end 

	def turn_on
		@on = true
	end

	def turn_off
		@on = false 
	end 

	def toggle 
		#do the opposit
		@on = !on?
	end
end 


bulb = Lightbulb.new('green')

binding.pry 