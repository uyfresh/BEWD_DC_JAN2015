require 'pry'

class Lightbulb
	#every time you build a new instance, initialize automatically runs
	def initialize (color='white')
		@color = color
		@on = false
		#use @ to define default variable 
	end

	def on? 
		return @on
	end

	#getter
	def color
		return @color
	end

	def turn_on
		@on=true
	end

	def turn_off
		@on = false
	end

	def toggle
		@on = !on?
	end

#setter
	def color=(color)
		@color = color
	end
#same as above different way to think about it
	def new_color(color)
		@color = color
	end


end

bulb = Lightbulb.new

binding.pry

