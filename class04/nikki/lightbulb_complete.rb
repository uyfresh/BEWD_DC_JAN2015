require 'pry'

class Lightbulb
  def initialize(color='white')
    @color = color
    @on = false
  end

  def on?
    return @on
  end

  def turn_on
    @on = true
  end

  def turn_off
    @on = false
  end

  def toggle
    @on =!on?
  end

  def color # this is a 'getter'
    return @color
  end

  def color=(color) # this is a setter
    @color = color
  end



end

bulb = Lightbulb.new('green')


binding.pry