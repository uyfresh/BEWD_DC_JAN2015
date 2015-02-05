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

  def word
    return @word.downcase
  end

  def word=(word)
    @word = word.downcase
  end

  def score
    # Make letters array:
    letters = word.split("")

    # Map letters into scores:
    scores = letters.map do |letter|
      @points[letter]
    end

    # Reduce scores into a single total:
    total = scores.reduce(0) do |sum, score|
      sum + score
    end

    # Return the total:
    return total
  end

  def multiplier_score(mult)
    return score * mult
  end
end


zebra = ScrabbleWord.new('Zebra')


binding.pry