# GA BEWD DC 2015
#
# Ben Collins
#
# Homework week 2 Class 04
#
# Scrabble Word

require 'pry'

# Create a class named `ScrabbleWord`.

class ScrabbleWord

	# Create class `initialize` method with one argument `word`
	def initialize(word)
		@word = word
		@points = {  # Create letter/score hash
		  'a' => 1,
		  'b' => 3,
		  'c' => 3,
 		  'd' => 2,
		  'e' => 1,
		  'f' => 4,
		  'g' => 2,
		  'h' => 4,		
		  'i' => 1,
		  'j' => 8,
		  'k' => 5,
		  'l' => 1,
		  'm' => 3,
		  'n' => 1,
		  'o' => 1,
		  'p' => 3,
		  'q' => 10,
		  'r' => 1,
		  's' => 1,	
		  't' => 1,
		  'u' => 1,	
		  'v' => 4,
		  'w' => 4,
		  'x' => 8,	
		  'y' => 4,
		  'z' => 10
		}

	end

	# Create "getter" method for the instance variable `@word`
	def word
		return @word.downcase
	end

	# Create "setter" method for the instance variable `@word`
	def word=(word)
		@word = word.downcase
	end

	# Create a method `score`
	def score

		word_array = @word.downcase.split(//)
		score_array = word_array.map do |letter|
			@points[letter]
		end

		# return the total of scores in array by calling 'total' method
		return total(score_array)
	end

	# Create total method to sum numbers in array
	def total(array)
		total = 0
		for number in array
			total += number
		end
		return total
	end

	# Create 'multiplier_score' with number as argument
	def multiplier(factor)
		if factor <= 0
			return "Please select a positive number"
		else
			return score * factor
		end
	end

end

binding.pry

