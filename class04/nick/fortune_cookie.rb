require 'pry'

class FortuneCookie

	def initialize
		@wrapped = true
		@cracked = false
		@fortunes = [ 
			"Do less, to do more" , "Work hard, Play harder" , 
			"Crouching tiger, Hidden Dragon" , "Love is life, Life is love"
					]
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
			return "You must unwrap it first!"
		elsif @wrapped == false
			@cracked = true
		end
	end

	def read
		if @wrapped == true
			return "You must unwrap it and crack it first."
		elsif @cracked == false
			return "You must crack it first."
		else 
			return @fortunes.sample
		end
	end
end 

cookie = FortuneCookie.new

binding.pry

