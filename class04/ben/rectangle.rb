# Rectangle

# Define a new class called `Rectangle`

require 'pry'

class Rectangle

# Initialize new rectangles with `@length` and `@width` instance variables. 
# Receive these initial values as arguments of the `initialize` method
	def initialize(length,width)
		@length = length
		@width = width
	end

# getter length
	def length
		return @length
	end

# getter width
	def width
		return @width
	end

# setter length
	def length=(length)
		@length = length
	end

# setter width
	def width=(width)
		@width = width
	end

# Define an `is_square?` method on the class. 
# It should return true if the length and width are equal
	def is_square?
		return @length == @width
	end

# Define an `area` method on the class
	def area
		return @length * @width
	end

# Define a `perimiter` method on the class
	def perimeter
		return (@length + @width) * 2
	end

end

rect = Rectangle.new(100,50)

binding.pry
