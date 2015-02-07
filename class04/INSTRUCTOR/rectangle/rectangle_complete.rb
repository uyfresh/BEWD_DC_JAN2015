require 'pry'

class Rectangle
  def initialize(length=100, width=100)
    @length = length
    @width = width
  end

  def length
    return @length
  end

  def length=(length)
    @length = length
  end

  def is_square?
    return @length == @width
  end

  def area
    return @length * @width
  end

  def perimiter
    return (@length + @width) * 2
  end
end

rect = Rectangle.new(100, 50)

binding.pry