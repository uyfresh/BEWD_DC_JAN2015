require 'pry'

class Rectangle
	def initialize (length, width)
		@length = length
		@width = width
	end


	#getter
	 def length
	 	return @length
	 end	
    
    def is_square?	
    	return @length ==  @width
	end
	# this returns the true statement without putting true.

	def area
		return @lenth * @width
	end	

	def perimeter
		return @length + @width * 2
	end	
   end 	

    rect = Rectangle.new(100, 50)
    

	binding.pry   	