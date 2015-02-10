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

    # keep going...
  end

  def lowercase 
    @word=@word.downcase
  end

  def lowercase=(word) 
    @word = word.downcase
  end

  def score
    @total = 0 
    i = 0
    while @word.length > i 
      tile_letter = @word.byteslice(i)
      @total = @total + @points.fetch(tile_letter)
      i = i+1
    end
    return @total
  end

  def multiplier_score(i)
    @total = @total*i
    return @total
  end

end

word = ScrabbleWord.new ("hello")

binding.pry