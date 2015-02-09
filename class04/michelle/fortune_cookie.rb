require 'pry'

class FortuneCookie
	def initialize
		@wrapped = true
		@cracked = false
	end 

	def wrapped?
		return @wrapped
	end

	def cracked?
		return @cracked
	end

	def unwrap
		cookie != @wrapped
	end

	def crack
		if cookie  == @wrapped
			return "You need to unwrap it first."
		elsif cookie != @wrapped
			return !@cracked
		end

	end

	def read
		if cookie == @wrapped
			return "You need to unwrap it, then crack it."
		elsif cookie == @cracked
			return "You still need to crack it."
		else
			"The OO is strong with you."
		end
	end
end

cookie = FortuneCookie.new

binding.pry
