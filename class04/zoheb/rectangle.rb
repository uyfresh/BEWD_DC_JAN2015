require 'pry'

class Rectangle

	def initialize(length,width)
		@length = length
		@width = width
	end

	def is_square?
		if @length == @width
			return true
		else
			return false
		end
	end

	def area
		@area = @length*@width
		puts "The area is #{@area}."
	end

	def perimeter
		@perimeter = (2*@length) + (2*@width)
		puts "The perimeter is #{@perimeter}."
	end

	def length
		return @length
	end

	def width
		return @width
	end

	def length=(length)
		@length = length
	end

	def width=(width)
		@width = width
	end

	def flip
		@length = @length_hold
		@width = @length
		@length_hold = @width
		puts "The length is now #{@length}. The width is now #{@width}."
	end
end

binding.pry
