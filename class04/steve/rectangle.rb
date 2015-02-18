require 'pry'

class Rectangle

	def initialize(length, width)
		@width = width
		@length = length
	end

	# "getter"
	def width
		return @width
	end

	# "getter"
	def length
		return @length
	end

	# "setter"
	def width=(width)
		@width = width
	end

	# "setter"
	def length=(length)
		@length = length
	end

	def is_square?
		return @length == @width
	end

	def area
		return @width * @length
	end

	def perimeter
		return 2 * @width + 2 * @length
	end

end

rect = Rectangle.new(100, 50)



binding.pry