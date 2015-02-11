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
		@wrapped = false
	end

	def crack
		if wrapped?
			return "You need to unwrapped it first"
		else
			@cracked = true
		end
	end

	def read 
		if wrapped?
			return "You need to unwrapped it, then crack it"
		elsif !cracked?
			return "You still need to crack it!"
		else 
			return "The OO is strong with you"
			
		end
	end
end

cookie = FortuneCookie.new
cookie.crack
puts cookie.crack

cookie.read
puts cookie.read

cookie.unwrap
cookie.read
puts cookie.unwrap

cookie.crack
cookie.read
puts cookie.crack

binding.pry
