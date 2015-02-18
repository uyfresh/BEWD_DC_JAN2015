require 'pry'


# Robot (abstract)
class Robot
  def initialize()
    @name = "Robot"
    @quote = "beep. beep. boop."
  end

  def name
    return @name
  end

  def say_something
    return @quote
  end

  def erase!
    name = @name
    @name = ""
    @quote = ""
    return "#{name} has had its memory wiped."
  end
end


# Bender (extends Robot)
class Bender < Robot
  def initialize
    @name = "Bender"
    @quote = "Bite my shiny metal butt."
  end

  def say_something
    return"Awe, I made myself feel bad."
  end
end


# Protocol Droid (extends Robot)
class ProtocolDroid < Robot
  def initialize
    @name = "C3PO"
    @quote = "Oh, my! What have you done? I'm BACKWARDS."
  end
end


binding.pry