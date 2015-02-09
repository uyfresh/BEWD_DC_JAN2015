require 'pry'

class Rectangle
	#every time you build a new instance, initialize automatically runs
	def initialize (length=5, width=6)
		@length = length
		@width = width
	end

	def is_square? 
		if @width == @length
			return true
		else
			return false
		end
				
	end

	def length?
		return @length 
	end

	def set_length(new_length)
		@length = new_length	
	end

	def width?
		return @width 
	end

	def set_width(new_width)
		@width = new_width	
	end
	def area
		return @width*@length
	end

	def perimeter
		return (@width+@length)*2
	end

	
end

rect = Rectangle.new

#ls.bulb will show you all methods in class 

binding.pry

