 require 'pry'

 class Teenager
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    return @name
  end

  def name=(name)
    @name = name
  end

  def age
    return @age
  end

  def say_hello
    if @age < 14
      return "im #{@name.downcase} lolz"
    else
      return "Hello, my name in #{@name}."
    end
  end
 end

s1 = Teenager.new('Bob', 19)
s2 = Teenager.new('Bobby', 12)

puts s1.say_hello()
puts s2.say_hello()





