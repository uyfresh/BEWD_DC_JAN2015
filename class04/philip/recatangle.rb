require 'pry'

# class Rectangle

# 	def initialize(length, width)
# 		@length = length
# 		@width = width
# 	end

# 	def length
# 		@legnth = length
# 	end

# 	def width 
# 		@width = width
# 	end

# 	def is_square?
# 		if width == length = true
# 		end
# 		elsif width !== length = false
# 		end	
# 	end

# 	def area
# 		@area = width * length
# 	end

# 	def perimiter 
# 		@perimiter = (2*width.to_i) + (2*length.to_i)
# end

#Answer

class Rectangle

	def initialize(length, width)
		@length = length
		@width = width
	end

	def is_square?
		return @length == @width
	end

	def area
		return @length * @width
	end

	def perimiter 
		return (@length + @width) * 2 
	end
end

rect = rectangle.new(100, 50) 

binding.pry

