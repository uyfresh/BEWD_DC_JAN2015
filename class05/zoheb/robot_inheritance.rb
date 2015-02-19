require 'pry'


# Robot (abstract)
class Robot
  def initialize()
    @name = "Robot"
    @quote = "beep. beep. boop."
    @age = 100
  end

  def name
    return @name
  end

  def say_something
    return @quote
  end

  def age
    return @age
  end

  def erase!
    name = @name
    @name = ""
    @quote = ""
    return "#{name} has had its memory wiped."
  end
end


# Bender (extends Robot)
class Bender < Robot # This extends off robot and can do the same things. 
  def initialize
    super() #this adds the attributes from the Robot initialize. 
    @name = "Bender" # He, however, initializes with different name and quotes.
    @quote = "Bite my shiny metal butt."
  end

  def say_something 
    return "Awe, I made myself feel bad."
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