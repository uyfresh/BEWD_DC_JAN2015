require 'pry'

class FortuneCookie 
	def initialize    
		@wrapped = true
		@cracked = false
	end

	def wrapped 
	 	return @wrapped 
	end
	
	def cracked 
		return @cracked
	end

	def unwrap 
		return @unwrapped
	end

	def crack 
		return @cracked
	end

	def #(the end on line 30-is closing the def on line 25)
		@unwrapped::  false
		if @wrapped == false
			return 'You need to unwrap it, then crack it'	
		end
	end


  	def read  #(the end on line 43 is closing the def on line 33)
  		@unwrapped = false
		if @wrapped == false
			return 'You need to unwrap it, then crack it'
		

  		elsif 
  		    puts  'You need to crack it first'
  		else
			puts 'The 00 is strong with you'
		end
    
  	end
end

binding. pry

