require 'pry'

class Rectangle 
	def initialize(length, width)
		#parens needed to accept arguments
		@length=length
		@width=width
	end

	def length
		return @length
	end
	def width
		return @width
	end

	def is_square?
		return @length == @width
		
	end

	def area
		@length * @width
	end

	def perimeter
		(@length + @width)*2
	end



end

rect = Rectangle.new(100,50)

binding.pry