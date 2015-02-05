require 'pry'


class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def is_square?
    return @length == @width
  end

  def area
    return @length * @width
  end

  def perimeter
    return 2 * (@length + @width)
  end
end


binding.pry