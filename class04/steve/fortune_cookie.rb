require 'pry'

class FortuneCookie

	def initialize
		@wrapped = true
		@cracked = false
		@fortune = ["People are naturally attracted to you", "Be on the lookout for coming events", "A dream you have will come true", "You can make your own happiness"]
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
			puts "You need to unwrap it first"
		else
			@cracked = true
		end
	end

	def read
		if @wrapped == true
			puts "You need to unwrap it, then crack it"
		elsif @cracked == false
			puts "You still need to crack it"
		else
			puts @fortune.shuffle[0]
		end
	end

end

cookie = FortuneCookie.new

binding.pry