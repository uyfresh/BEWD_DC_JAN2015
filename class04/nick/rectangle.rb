require 'pry'

class Rectangle

	def initialize(length, width)
		@length = length
		@width = width
	end

		# length getter
	def length
		return @length
	end
		# length setter
	def length=(length)
		@length = length
	end
		# width getter
	def width
		return @width
	end
		#width setter
	def width=(width)
		@width = width
	end

	def is_square?
		if @length == @width
			return true
		end
	def is_rectangle?
		if @length != @width
			return false
		end
	end

	def area (length, width)
		return @length * @width
	end

	def perimeter(length, width)
		return (@length + @width) * 2
	end
	
end

binding.pry