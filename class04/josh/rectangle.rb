require 'pry'


class Rectangle 
	def initialize(length=100, width=100) 
		@length = length
		@width = width
	end 

	def length
		#getter 
		return @length 
	end 


	def length=(length)
		# setter 
		@length = length
	end 


	def is_square?
		 return @length == @width
		 #same as an if statement
	end 

	def area 
		return @length * @width
	end 

	def perimeter 
		return @length*2+@width*2
	end 
end
	
rect = Rectangle.new(100,50)



# * Define an `is_square?` method on the class. It should return true if the length and width are equal.

# * Define an `area` method on the class. It should return the area of the rectangle.

# * Define a `perimiter` method on the class. It should return the perimiter of the rectangle.

# ## Try it out...

# After you've built your `Rectangle` class, set a `binding.pry` at the bottom, run your script, and try building a rectangle:

# ```
# rect = Rectangle.new(100, 100)
# rect.is_square?
#  # -> true
# ```

# ## Keep going!

# Add getters and setters for the length and width properties.

binding.pry