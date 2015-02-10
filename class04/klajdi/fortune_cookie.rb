require 'pry'

class FortuneCookie
	

	def initialize
		@wrapped = true
		@cracked = false
		@fortunes = ["You will stumble upon a puddle of sunshine", 
					 "You will turn candy into toothaches",
					 "You will read many books", 
					 "You will outrun a turtle", 
					 "If you eat too much candy you might not outrun the turtle",
					 "Finish what you started, or I'll give you more advice instead of fortune"
					]
	end

	def wrapped?
		return @wrapped
	end

	def unwrap
		return @wrapped = false
	end

	def cracked?
		return @cracked
	end

	def crack
		if wrapped?
			return "You need to unwrap it first."
		else
		 	return @cracked = true
		end
	end

	def read
		if wrapped?
			return "You need to unwrap it, then crack it."
		elsif cracked?
			return @fortunes.sample
		else	
			return "You still need to crack it"
		end
	end


end

cookie = FortuneCookie.new


binding.pry