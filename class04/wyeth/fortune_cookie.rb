require 'pry'
fortunes = ["You will have a lucky day!", "A stranger will do a good deed for you in the coming days"]
select_fortune = rand(2)


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
		return "fortune cookie is unwrapped"
	end

	def crack
		if @wrapped == true
			return "You need to unwrap it first!"
		
		elsif @wrapped == false
			@cracked = true
			return "you have cracked the fortune cookie!"
		end
	end

	def read
		if @wrapped == true
			return "You need to unwrap it, then crack it"
		
		elsif @cracked == false
			return "You still need to crack it"
		
		else 
		return "The 00 is strong with you"
		end
	end
end



cookie = FortuneCookie.new

binding.pry