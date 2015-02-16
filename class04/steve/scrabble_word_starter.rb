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

  #Define a "getter" method for the instance variable `@word`. It should return the word as a lowercase string.
  def word
    return @word.downcase
  end

  #setter
  def word=(word)
    @word = word.downcase
  end

  #Define a method `score`.
  def score
    #Calling this method should look up points for each letter in the word and then return the sum of all letter points.
    sum = 0

    #You'll need to split the word into a letters array
    word_array = word.split(//)

    #map each letter into a score
    score_array = word_array.map do |letter|
      @points[letter]
    end

    #return the sum of the scores
    score_array.each do |point|
      sum += point
    end
    return sum

  end

  def multiplier_score(multiplier)
    return score * multiplier
  end

end

zebra = ScrabbleWord.new('Zebra')

binding.pry