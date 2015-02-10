require 'pry'

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
# Define a "getter" method for the instance variable `@word`. It should return the word as a lowercase string.
def word 
  return @word.downcase
end 

# Define a "setter" method for the instance variable `@word`. It should set the word as a lowercase string.
def word 
  word = @word.downcase
end 
# Define a method `score`. Calling this method should look up points for each letter in the word, and then return the sum of all letter points. You'll need to split the word into a letters array, map each letter into a score, and then return the sum of the scores.
def score 
  total_score = 0
  letters_array = word.split(//)

  score_array = letters_array.map { |letter| @points[letter] } 

  score_array.each do |points|
    total_score = total_score + points 
end    
  return total_score


end 

# Define a method `multiplier_score` that accepts a numeric multiplier as an argument, and returns a multiplied version of the score (ie: double or triple word score).
def multiplier_score(multiplier) 
  return score * multiplier
end



end 



binding.pry