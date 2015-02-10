require "pry"

class ScrabbleWord

	def initialize(word) 
		@word = word
		@points = {
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

	#getter
	def word
		return @word.downcase
	end

	#setter
	def word=(word)
		@word = word.downcase
	end

	def score
		word_array = word.split(//)
		score_array = word_array.map do |letter|
		@points[letter]
		end
		score_sum = 0
		score_array.each do |value|

			score_sum += value
		end
		return score_sum
	end

	def multiplier_score(multiplier)
		return score * multiplier
	end

end

zebra = ScrabbleWord.new("Zebra")

binding.pry