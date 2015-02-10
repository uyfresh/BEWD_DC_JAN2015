require 'pry'

class FortuneCookie
	#every time you build a new instance, initialize automatically runs
	def initialize ()
		@wrapped = true
		@cracked = false
		@fortunes = ["Live long and prosper", "Help! I'm trapped in a fortune cookie factory", "The 00 is strong with you"]
	end

	def wrapped? 
		return @wrapped
	end

	def cracked?
		return @cracked
	end

	def unwrap
		@wrapped = false
		#return @wrapped	
	end

	def crack
		if @wrapped == true
		return "You need to unwrap it first"	
		else 
		@cracked = true
		end
	end

	def read
		if @wrapped == true
		return "You need to unwrap it, then crack it"	
		elsif @cracked == false
			return "You still need to crack it"
		else 
			return @fortunes.sample
		end
	end

	
end

cookie = FortuneCookie.new
 

binding.pry

