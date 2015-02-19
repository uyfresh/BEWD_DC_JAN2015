require 'pry'

def say_hello()
  puts "hi"
end
 
# ^^ the outter wrapper of our method. 



def parrot(name, desire='cracker')
  puts "#{name} wants a #{desire}"
end

def add (a, b)
  parrot(a, b) #example of method calling another method
  return a + b
end


binding.pry