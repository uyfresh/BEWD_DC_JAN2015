require "Pry"

class FortuneCookie
	def initialize
		@wrapped = true
		@cracked = false
	end

	#Is the cookie wrapped?
	def wrapped?
		return @wrapped
	end

	#Is the cookie cracked?
	def cracked?
		return @cracked
	end

	#Unwrap the cookie
	def unwrap
		@wrapped = false
	end

	#Crack the cookie
	def crack
		if wrapped? 
			return "You need to unwrap your cookie first."
		else
			@cracked = true 
		end
	end

	#Read the fortune
	def read
		if wrapped? 
			return "You need to unwrap your cookie and then crack it."
		elsif !cracked?
			return "You  still need to crack your cookie."
		else 
			return "The 00 is strong with you."
		end
	end
end

cookie = FortuneCookie.new

binding.pry

