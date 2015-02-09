require 'pry'

class FortuneCookie

	def initialize 
		@wrapped = true
		@cracked = false
		@fortune = ["You are getting lucky tonight", "You are about to come into money", "Be careful", "Should have ordered the chicken", "You will poop in an hour"]
	end

	def wrapped?
		return @wrapped
	end

	def cracked?
		return @cracked
	end	

	def unwrap
		@wrapped = false
	end

	def crack
		if @wrapped == true
			return "To get your fortune you must open"
		elsif @wrapped == false
			@cracked = true 
		end
	end
	
	def read
		if @wrapped == true
			return "You first must unwrap and crack it. "
		elsif @cracked == false
			return "You must crack it first."
		else 
		return @fortune.sample
		end			
	end
end

cookie = FortuneCookie.new	
binding.pry