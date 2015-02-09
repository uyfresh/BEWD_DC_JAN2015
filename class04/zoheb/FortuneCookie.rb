require 'pry'

class FortuneCookie
	def initialize()
		@wrapped = true
		@cracked = false
		@fortune = ["The OO is strong with you.","The best judge of character is yourself.","Love is just around the corner."]
	end

	def wrapped?
		if @wrapped == true
			return true
		else
			return false
		end
	end

	def cracked?
		if @cracked == true
			return true
		else
			return false
		end
	end

	def unwrap
		@wrapped = false
	end

	def crack
		if @wrapped == true
			return "You need to unwrap it first."
		else
			@cracked = true
		end
	end

	def read
		if @wrapped == true
			return "YOu need to unwrap it, then crack it."
		elsif @wrapped == false && @cracked == false
			return "You still need to crack it."
		elsif @wrapped == false && @cracked == true
			return @fortune.sample
		end
	end
end

	binding.pry