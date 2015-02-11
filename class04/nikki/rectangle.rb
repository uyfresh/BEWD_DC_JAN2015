require 'pry'
class Rectangle 
  def initialize(length, width)
    @length = length
    @width = width
  end

  def is_square?
    @length == @width
  end

  def area
    @length * @width
  end

  def perimeter
    (@length * 2) + (@width * 2)
  end

  def length # getter
    return @length
  end

  def width # getter
    return @width
  end

  def length=(length) # setter
    @length = length
  end

  def width=(width) # setter
    @width = width
  end


end

binding.pry
