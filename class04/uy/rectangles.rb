require 'pry'

class Rectangle
	def initialize(length, width)
		@length = length
		@width = width
	end

	# getter
	def length
		return @length
	end

	# setter
	def length=(length)
		@length = length
	end

	def is_square?
		return @length == @width
	end

	def area
		return @length * @width
	end


	def perimitter
		return (@length + @width) * 2
	end
end

rect = Rectangle.new(100, 50)

binding.pry