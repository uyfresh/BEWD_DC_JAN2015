# Define a new class called `Rectangle`.

# Initialize new rectangles with `@length` and `@width` instance 
# variables. Receive these initial values as arguments of the `initialize` method.

# Define an `is_square?` method on the class. It should return true if the 
# length and width are equal.

# Define an `area` method on the class. It should return the area of the rectangle.

# Define a `perimiter` method on the class. It should return the perimiter 
# of the rectangle.

# Add getters and setters for the length and width properties.

require 'pry'

class Rectangle

	def initialize(length, width)
		@length = length
		@width = width
	end

	###
	# getter

	def length
		return @length
	end

	def width
		return @width
	end

	# setter

	def length=(length)
		@length = length
	end

	def width=(width)
		@width = width
	end
	###

	def is_square? 
		@length == @width
	end	

	def area
		return @length * @width
	end

	def perimeter
		return (@length + @width) * 2
	end

end

rect = Rectangle.new(100, 100)

binding.pry