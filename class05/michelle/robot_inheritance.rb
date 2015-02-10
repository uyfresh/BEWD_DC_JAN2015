require 'pry'


# Robot (abstract or parent class)
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
  #super is a way that we can start getting all of the stuff above us. Nothing in Bender will override it
    super()
    @name = "Bender"
    @quote = "Bite my shiny metal butt."
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