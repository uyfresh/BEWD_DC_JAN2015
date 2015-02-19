require 'pry'

class FortuneCookie
	def initialize
		@wrapped = true
		@cracked = false
	end

	def is_wrapped? 
	 	if @wrapped == true
	 		puts 'The cookie is wrapped.'
	 	else
	 		puts 'The cookie is unwrapped.'
	 	end
	 end
	
	def is_cracked? 
		if @cracked == false
			puts 'The cookie is not cracked.'
		else 'The cookie is cracked.'
		end
	end



	def unwrap 
		unwrap != @wrapped
		return 'The cookie is not wrapped.'

	end

	def crack 
		if unwrap == false
			puts 'You need to unwrap it first.'
		else
			puts 'The cookie is cracked.'
		end

		
	end


  	def read
  		if @wrapped == false
  			puts 'You need to unwrap it, then crack it'
  		elsif @cracked == true
  		    puts  'You need to crack it first'
  		end
  		if @wrapped == false && @cracked == true
			puts 'The 00 is strong with you'
		end
  	end



end
binding. pry
