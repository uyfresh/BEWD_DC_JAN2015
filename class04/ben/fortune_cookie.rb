# GA BEWD DC 2015
#
# Ben Collins
#
# Homework week 2 Class 04
#
# Fortune Cookie

require 'pry'

# Create a class called `FortuneCookie`
class FortuneCookie

	# initialize method, set two instance variables
	def initialize  
		@wrapped = true
		@cracked = false
		
		# initialize array of my own fortunes
		@fortune_library = ["You learn from your mistakes... You will learn a lot today",
			"You cannot love life until you live the life you love",
			"A dream you have will come true",
			"The greatest risk is not taking one",
			"Now is the time to try something new"]
	end

	# Define `wrapped?` method
	def wrapped?
		return @wrapped
	end

	# Define `cracked?` method
	def cracked?
		return @cracked
	end	

	# Define 'unwrap' method
	def unwrap
		@wrapped = false
	end

	# Define a 'crack' method
	def crack
		if @wrapped == true
			return "You need to unwrap it first"
		else
			@cracked = true
		end
	end

	# Define a 'read' method
	def read
		if @wrapped == true
			return "You need to unwrap, then crack it"
		elsif @cracked == false
			return "You still need to crack it"
		else
			i = rand(5) # select a random number between 0 and 4
			return @fortune_library[i] # select fortune from the array
		end
	end
end


binding.pry
